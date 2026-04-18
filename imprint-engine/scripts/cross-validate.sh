#!/usr/bin/env bash
# ============================================================================
# Imprint 交叉验证脚本 (cross-validate.sh)
# 用途：验证 imprint-engine 生成的三份文档之间的映射完整性
#   01-岗位职责定义.md  ←→  02-能力要求定义.md  ←→  03-知识体系定义.md
# 用法：./cross-validate.sh <profiles目录路径>
# ============================================================================

set -eo pipefail

# ---- 颜色定义 ----
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# ---- 参数检查 ----
if [[ $# -lt 1 ]]; then
    echo -e "${RED}错误：请提供 profiles 目录路径${RESET}"
    echo "用法：$0 <profiles目录路径>"
    echo "示例：$0 profiles/internet-0to1-staff-sixlayer-ic-product-manager/"
    exit 1
fi

PROFILE_DIR="${1%/}"  # 去除末尾斜杠

# ---- 文件路径 ----
DOC_01="${PROFILE_DIR}/01-岗位职责定义.md"
DOC_02="${PROFILE_DIR}/02-能力要求定义.md"
DOC_03="${PROFILE_DIR}/03-知识体系定义.md"
DOC_EV="${PROFILE_DIR}/_evidence.md"

# ---- 文件存在性检查 ----
missing=0
for f in "$DOC_01" "$DOC_02" "$DOC_03"; do
    if [[ ! -f "$f" ]]; then
        echo -e "${RED}⚠ 文件不存在：${f}${RESET}"
        missing=1
    fi
done
if [[ $missing -eq 1 ]]; then
    echo -e "${RED}缺少必要文件，无法执行交叉验证。${RESET}"
    exit 1
fi

# 证据文件可选
has_evidence=1
if [[ ! -f "$DOC_EV" ]]; then
    echo -e "${YELLOW}⚠ 证据文件不存在：${DOC_EV}，跳过证据热图。${RESET}"
    has_evidence=0
fi

echo ""
echo -e "${BOLD}═══════════════════════════════════════════════════${RESET}"
echo -e "${BOLD}  Imprint 交叉验证报告${RESET}"
echo -e "${BOLD}  目录：${PROFILE_DIR}${RESET}"
echo -e "${BOLD}═══════════════════════════════════════════════════${RESET}"

# ============================================================================
# 1. 前向映射核对：01 职责 → 02 的「→ 对应职责」引用
# ============================================================================
echo ""
echo -e "${CYAN}━━━ 1. 前向映射核对：01 职责 → 02 引用 ━━━${RESET}"
echo ""

# 从 01 提取所有条目编号（如 1.1、2.3、5.2）
duty_ids=()
while IFS= read -r line; do
    # 匹配 ### X.Y 格式的条目标题
    id=$(echo "$line" | sed -nE 's/^### ([0-9]+\.[0-9]+).*/\1/p')
    if [[ -n "$id" ]]; then
        duty_ids+=("$id")
    fi
done < "$DOC_01"

# 从 02 提取所有「→ 对应职责」中引用的编号
ref_duties_in_02=$(grep "→ 对应职责" "$DOC_02" | sed 's/.*→ 对应职责[**]*：//; s/[**]//g' | tr '、' '\n' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | sort -u)

covered_count=0
uncovered_count=0
uncovered_list=()

for duty_id in "${duty_ids[@]}"; do
    if echo "$ref_duties_in_02" | grep -qx "$duty_id"; then
        covered_count=$((covered_count + 1))
    else
        uncovered_count=$((uncovered_count + 1))
        uncovered_list+=("$duty_id")
    fi
done

total_duties=${#duty_ids[@]}
if [[ $total_duties -gt 0 ]]; then
    coverage_pct=$((covered_count * 100 / total_duties))
else
    coverage_pct=0
fi

echo -e "  01 职责条目总数：${BOLD}${total_duties}${RESET}"
echo -e "  02 已覆盖：${GREEN}${covered_count}${RESET}  未覆盖：${RED}${uncovered_count}${RESET}"
echo -e "  覆盖率：${BOLD}${coverage_pct}%${RESET}"

if [[ ${#uncovered_list[@]} -gt 0 ]]; then
    echo ""
    echo -e "  ${RED}未被 02 引用的职责条目：${RESET}"
    for item in "${uncovered_list[@]}"; do
        # 从 01 中找到对应标题
        title=$(grep "^### ${item} " "$DOC_01" | sed "s/^### //" | head -1)
        echo -e "    🔴 ${item} ${title:+— $title}"
    done
fi

# ============================================================================
# 2. 反向孤儿核对：03 的「→ 支撑能力」→ 02 能力条目
# ============================================================================
echo ""
echo -e "${CYAN}━━━ 2. 反向孤儿核对：03 引用 → 02 能力条目 ━━━${RESET}"
echo ""

# 从 02 提取所有能力条目编号
ability_ids=()
while IFS= read -r line; do
    id=$(echo "$line" | sed -nE 's/^### ([0-9]+\.[0-9]+).*/\1/p')
    if [[ -n "$id" ]]; then
        ability_ids+=("$id")
    fi
done < "$DOC_02"

# 从 03 提取所有「→ 支撑能力」中引用的编号
ref_abilities_in_03=$(grep "→ 支撑能力" "$DOC_03" | sed 's/.*→ 支撑能力[**]*：//; s/[**]//g' | tr '、' '\n' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | sort -u)

orphan_count=0
orphan_list=()

# 检查 03 引用的每个能力编号是否在 02 中存在
while IFS= read -r ref_id; do
    [[ -z "$ref_id" ]] && continue
    found=0
    for aid in "${ability_ids[@]}"; do
        if [[ "$aid" == "$ref_id" ]]; then
            found=1
            break
        fi
    done
    if [[ $found -eq 0 ]]; then
        orphan_count=$((orphan_count + 1))
        orphan_list+=("$ref_id")
    fi
done <<< "$ref_abilities_in_03"

total_refs=$(echo "$ref_abilities_in_03" | grep -c '[0-9]' || true)
valid_refs=$((total_refs - orphan_count))

echo -e "  02 能力条目总数：${BOLD}${#ability_ids[@]}${RESET}"
echo -e "  03 引用的能力编号（去重）：${BOLD}${total_refs}${RESET}"
echo -e "  有效引用：${GREEN}${valid_refs}${RESET}  孤儿引用：${RED}${orphan_count}${RESET}"

if [[ ${#orphan_list[@]} -gt 0 ]]; then
    echo ""
    echo -e "  ${RED}孤儿引用（03 引用了但 02 中不存在的能力编号）：${RESET}"
    for item in "${orphan_list[@]}"; do
        echo -e "    🔴 ${item}"
    done
else
    echo -e "  ${GREEN}✓ 无孤儿引用${RESET}"
fi

# ============================================================================
# 3. 证据热图：_evidence.md 中每个 E编号 在 01/02/03 中的引用次数
# ============================================================================
echo ""
echo -e "${CYAN}━━━ 3. 证据热图 ━━━${RESET}"
echo ""

if [[ $has_evidence -eq 0 ]]; then
    echo -e "  ${YELLOW}（跳过：无 _evidence.md 文件）${RESET}"
else
    # 从 _evidence.md 提取所有证据编号（E01, E02, ...）
    evidence_ids=()
    while IFS= read -r eid; do
        evidence_ids+=("$eid")
    done < <(grep -oE '^### E[0-9]+' "$DOC_EV" | sed 's/^### //' | sort -t'E' -k1,1n)

    total_evidence=${#evidence_ids[@]}
    hot_count=0    # 🟢 ≥3
    warm_count=0   # 🟡 1-2
    cold_count=0   # 🔴 0
    cold_list=()

    echo -e "  ${BOLD}编号    01引用  02引用  03引用  合计  状态${RESET}"
    echo "  ─────────────────────────────────────────────"

    for eid in "${evidence_ids[@]}"; do
        # 统计在每份文档中的引用次数（排除 _evidence.md 自身）
        count_01=$(grep -c "${eid}" "$DOC_01" 2>/dev/null || true)
        count_02=$(grep -c "${eid}" "$DOC_02" 2>/dev/null || true)
        count_03=$(grep -c "${eid}" "$DOC_03" 2>/dev/null || true)
        total=$((count_01 + count_02 + count_03))

        if [[ $total -ge 3 ]]; then
            status="🟢"
            hot_count=$((hot_count + 1))
        elif [[ $total -ge 1 ]]; then
            status="🟡"
            warm_count=$((warm_count + 1))
        else
            status="🔴"
            cold_count=$((cold_count + 1))
            cold_list+=("$eid")
        fi

        printf "  %-7s  %4d    %4d    %4d   %4d  %s\n" "$eid" "$count_01" "$count_02" "$count_03" "$total" "$status"
    done

    echo ""
    echo -e "  证据总数：${BOLD}${total_evidence}${RESET}"
    echo -e "  🟢 充分引用（≥3）：${GREEN}${hot_count}${RESET}"
    echo -e "  🟡 少量引用（1-2）：${YELLOW}${warm_count}${RESET}"
    echo -e "  🔴 零引用：${RED}${cold_count}${RESET}"

    if [[ ${#cold_list[@]} -gt 0 ]]; then
        echo ""
        echo -e "  ${RED}零引用证据：${RESET}"
        for eid in "${cold_list[@]}"; do
            # 提取证据标题
            title=$(grep "^### ${eid} " "$DOC_EV" | sed "s/^### ${eid} //" | head -1)
            echo -e "    🔴 ${eid} ${title:+— $title}"
        done
    fi
fi

# ============================================================================
# 4. 汇总报告
# ============================================================================
echo ""
echo -e "${BOLD}═══════════════════════════════════════════════════${RESET}"
echo -e "${BOLD}  汇总${RESET}"
echo -e "${BOLD}═══════════════════════════════════════════════════${RESET}"
echo ""
echo -e "  前向覆盖率（01→02）：${BOLD}${coverage_pct}%${RESET}（${covered_count}/${total_duties}）"
echo -e "  孤儿引用数（03→02）：${BOLD}${orphan_count}${RESET}"

if [[ $has_evidence -eq 1 ]]; then
    echo -e "  证据利用率：🟢${hot_count} / 🟡${warm_count} / 🔴${cold_count}（共 ${total_evidence} 条）"
fi

echo ""

# 综合判定
issues=0
if [[ $uncovered_count -gt 0 ]]; then issues=$((issues + 1)); fi
if [[ $orphan_count -gt 0 ]]; then issues=$((issues + 1)); fi
if [[ $has_evidence -eq 1 && $cold_count -gt 0 ]]; then issues=$((issues + 1)); fi

if [[ $issues -eq 0 ]]; then
    echo -e "  ${GREEN}✅ 交叉验证通过，文档映射完整。${RESET}"
else
    echo -e "  ${YELLOW}⚠ 发现 ${issues} 类问题，建议检查上述标记条目。${RESET}"
fi

echo ""
