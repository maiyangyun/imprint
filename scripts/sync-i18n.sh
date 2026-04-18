#!/usr/bin/env bash
# sync-i18n.sh — Imprint 国际化同步脚本
# 扫描 skills/imprint/ 下所有 .zh-CN.md 文件，与对应的 .zh-TW.md 保持同步
# 依赖：opencc（可选，用于简繁转换；不可用时退化为直接复制）

set -euo pipefail

# ── 颜色 ──
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # 无颜色

# ── 脚本所在目录，向上推导 imprint 根目录 ──
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMPRINT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# ── 计数器 ──
COUNT_SYNCED=0
COUNT_SKIPPED=0
COUNT_FAILED=0
COUNT_OUT_OF_SYNC=0

# ── 用法 ──
usage() {
  echo "用法: $0 [--check | --sync]"
  echo ""
  echo "  --check   只检查，列出不同步的文件对（不修改任何文件）"
  echo "  --sync    执行同步：zh-CN → zh-TW（会先备份 .zh-TW.md 为 .bak）"
  exit 1
}

# ── 参数解析 ──
MODE=""
if [[ $# -ne 1 ]]; then
  usage
fi

case "$1" in
  --check) MODE="check" ;;
  --sync)  MODE="sync"  ;;
  *)       usage        ;;
esac

# ── 检测 opencc ──
HAS_OPENCC=false
if command -v opencc &>/dev/null; then
  HAS_OPENCC=true
fi

if [[ "$MODE" == "sync" && "$HAS_OPENCC" == false ]]; then
  echo -e "${YELLOW}⚠ 未检测到 opencc，将直接复制 zh-CN 到 zh-TW（不做简繁转换）${NC}"
  echo -e "${YELLOW}  安装方式: brew install opencc / apt install opencc${NC}"
  echo ""
fi

# ── 计算文件内容 hash（跨平台兼容） ──
file_hash() {
  local file="$1"
  if command -v md5sum &>/dev/null; then
    md5sum "$file" | awk '{print $1}'
  elif command -v md5 &>/dev/null; then
    md5 -q "$file"
  else
    # 兜底：用 cksum
    cksum "$file" | awk '{print $1}'
  fi
}

# ── 获取文件修改时间（秒级时间戳，跨平台） ──
file_mtime() {
  local file="$1"
  if [[ "$(uname)" == "Darwin" ]]; then
    stat -f '%m' "$file"
  else
    stat -c '%Y' "$file"
  fi
}

# ── 主逻辑 ──
echo -e "${CYAN}📂 扫描目录: ${IMPRINT_ROOT}${NC}"
echo -e "${CYAN}📋 模式: ${MODE}${NC}"
echo ""

# 查找所有 .zh-CN.md 文件
while IFS= read -r -d '' cn_file; do
  # 推导对应的 zh-TW 文件路径
  tw_file="${cn_file/.zh-CN.md/.zh-TW.md}"
  # 相对路径，方便显示
  rel_cn="${cn_file#"$IMPRINT_ROOT"/}"
  rel_tw="${tw_file#"$IMPRINT_ROOT"/}"

  # ── zh-TW 文件不存在 ──
  if [[ ! -f "$tw_file" ]]; then
    if [[ "$MODE" == "check" ]]; then
      echo -e "${RED}✗ 缺失: ${rel_tw}${NC}  ← 对应 ${rel_cn}"
      COUNT_OUT_OF_SYNC=$((COUNT_OUT_OF_SYNC + 1))
    else
      # sync 模式：直接生成
      echo -n "  创建 ${rel_tw} ... "
      if [[ "$HAS_OPENCC" == true ]]; then
        if opencc -i "$cn_file" -o "$tw_file" -c s2twp.json 2>/dev/null; then
          echo -e "${GREEN}✓ (opencc)${NC}"
          COUNT_SYNCED=$((COUNT_SYNCED + 1))
        else
          echo -e "${RED}✗ opencc 失败${NC}"
          COUNT_FAILED=$((COUNT_FAILED + 1))
        fi
      else
        cp "$cn_file" "$tw_file"
        echo -e "${YELLOW}✓ (直接复制)${NC}"
        COUNT_SYNCED=$((COUNT_SYNCED + 1))
      fi
    fi
    continue
  fi

  # ── 两个文件都存在，比较 hash ──
  hash_cn="$(file_hash "$cn_file")"
  hash_tw="$(file_hash "$tw_file")"

  # 如果有 opencc，需要先转换 zh-CN 再比较（否则 hash 永远不同）
  # 但 check 模式下不想产生临时文件开销，所以只比较修改时间
  mtime_cn="$(file_mtime "$cn_file")"
  mtime_tw="$(file_mtime "$tw_file")"

  if [[ "$mtime_cn" -le "$mtime_tw" ]]; then
    # zh-TW 不比 zh-CN 旧，视为已同步
    COUNT_SKIPPED=$((COUNT_SKIPPED + 1))
    continue
  fi

  # ── zh-CN 比 zh-TW 新，需要同步 ──
  if [[ "$MODE" == "check" ]]; then
    echo -e "${YELLOW}⚡ 不同步: ${rel_cn}${NC}"
    echo "     zh-CN mtime: $(date -r "$mtime_cn" '+%Y-%m-%d %H:%M:%S' 2>/dev/null || date -d "@$mtime_cn" '+%Y-%m-%d %H:%M:%S')"
    echo "     zh-TW mtime: $(date -r "$mtime_tw" '+%Y-%m-%d %H:%M:%S' 2>/dev/null || date -d "@$mtime_tw" '+%Y-%m-%d %H:%M:%S')"
    COUNT_OUT_OF_SYNC=$((COUNT_OUT_OF_SYNC + 1))
  else
    # sync 模式：先备份，再转换/复制
    echo -n "  同步 ${rel_cn} → ${rel_tw} ... "

    # 备份
    cp "$tw_file" "${tw_file}.bak"

    if [[ "$HAS_OPENCC" == true ]]; then
      if opencc -i "$cn_file" -o "$tw_file" -c s2twp.json 2>/dev/null; then
        echo -e "${GREEN}✓ (opencc)${NC}"
        COUNT_SYNCED=$((COUNT_SYNCED + 1))
      else
        # opencc 失败，恢复备份
        mv "${tw_file}.bak" "$tw_file"
        echo -e "${RED}✗ opencc 失败，已恢复备份${NC}"
        COUNT_FAILED=$((COUNT_FAILED + 1))
      fi
    else
      cp "$cn_file" "$tw_file"
      echo -e "${YELLOW}✓ (直接复制)${NC}"
      COUNT_SYNCED=$((COUNT_SYNCED + 1))
    fi
  fi

done < <(find "$IMPRINT_ROOT" -name '*.zh-CN.md' -print0 | sort -z)

# ── 汇总 ──
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [[ "$MODE" == "check" ]]; then
  echo -e "📊 检查完成"
  echo -e "   不同步: ${YELLOW}${COUNT_OUT_OF_SYNC}${NC}"
  echo -e "   已同步: ${GREEN}${COUNT_SKIPPED}${NC}"
  # 如果有不同步的文件，退出码为 1（方便 CI 使用）
  if [[ $COUNT_OUT_OF_SYNC -gt 0 ]]; then
    echo ""
    echo -e "💡 运行 ${CYAN}$0 --sync${NC} 执行同步"
    exit 1
  fi
else
  echo -e "📊 同步完成"
  echo -e "   已同步: ${GREEN}${COUNT_SYNCED}${NC}"
  echo -e "   已跳过: ${CYAN}${COUNT_SKIPPED}${NC}"
  echo -e "   失败:   ${RED}${COUNT_FAILED}${NC}"
  if [[ $COUNT_FAILED -gt 0 ]]; then
    exit 1
  fi
fi
