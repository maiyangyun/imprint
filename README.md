# Imprint — Identity Engine for AI Agents

> **帮助 Agent 明白自己是谁**

Imprint 是 [Cortex](https://github.com/maiyangyun) 产品体系的第一环，专注于解决 AI Agent 的身份认知问题。通过结构化的画像生成流程，让 Agent 上手即为对标全球一线公司 Staff/Principal 级别的专家数字员工。

## 定位

```
Cortex 产品体系：
Imprint（身份）→ Engram（记忆）→ Synapse（协作）
```

- **Imprint**：赋予 Agent 身份认知 — 它知道自己是谁、擅长什么、边界在哪
- **[Engram](https://github.com/maiyangyun/engram)**：赋予 Agent 记忆能力 — 积累经验、共享知识
- **Synapse**：赋予 Agent 协作能力 — 融入团队工作流（规划中）

## 核心能力

Imprint 通过**交互式五步向导**，为任何组织的任何业务领域一站式从零构建专家级数字员工：

1. **环境基座构建** — 校验/建立公司、团队、雇主三份基石文档
2. **造人法则加载** — 内化数字生命架构的核心规则
3. **专业武装生成** — 调用 imprint-engine 进行全网岗位调研，产出四份核心文档
4. **灵魂注入** — 个性化刺探，融合环境 × 专业 × 人设三位一体
5. **唤醒与封案** — 输出最终画像 + 回忆咒语 + 团队编制更新

### imprint-engine（画像生成引擎）

内置的八阶段闭环方法论，确保每份画像都有证据支撑：

```
访谈对齐 → 全网调研（≥10条证据）→ 方案确认 → 
生成 01-03 文档（边写边映射）→ 交叉验证 + 证据热图 → 
生成 04 场景文档（六段式 × 20个）→ 终验收
```

**产出物**：
- `01-岗位职责定义.md` — 六层/Path C 结构，每条带 Staff 水位判据
- `02-能力要求定义.md` — 可迁移专业能力，边写边映射
- `03-知识体系定义.md` — 逆金字塔最厚层，概念/框架/案例
- `04-典型工作场景与判断示例.md` — 六段式情境样本，专业对手测试
- `_evidence.md` — 调研证据库
- `05-回忆咒语.md` — Agent 自我唤醒 prompt

## 安装

Imprint 是 [OpenClaw](https://github.com/openclaw/openclaw) 的技能插件，即插即用：

```bash
# 将 imprint 文件夹复制到 OpenClaw 技能目录
cp -r imprint ~/.openclaw/skills/imprint

# 或指定 Agent profile
cp -r imprint ~/.openclaw/workspace-<agent>/skills/imprint
```

OpenClaw 启动时会自动扫描 `skills/` 下的 `SKILL.md` 并加载。

## 使用

直接对 Agent 说：

> "团队需要一个互联网 0-1 阶段的数据分析专家，启动 imprint。"

向导会自动引导你完成全流程。

## 目录结构

```
imprint/
├── SKILL.md                    # 主技能入口（五步向导）
├── README.md                   # 本文件
├── 01-团队：我们的Agent团队.md   # 基石文档模板
├── 02-人类：认识我们的公司.md     # 基石文档模板
├── 03-人类：认识我们的雇主.md     # 基石文档模板
├── 10-整体：数字生命架构全量指南.md
├── 12-入门：USER雇主索引.md
├── 13-入门：AGENT运行协议.md
├── 14-进阶：IDENTITY谈吐人设.md
├── 15-进阶：TOOLS工具地图.md
├── 16-高阶：SOUL元灵魂宪法.md
├── 17-高阶：HEARTBEAT心跳引擎.md
├── 20-整体：创建AI初始画像指南.md
├── best-practice/              # 参考样例（基石文档 + 成品画像）
├── profiles/                   # 已生成的岗位画像缓存
└── imprint-engine/             # 画像生成引擎（八阶段方法论）
    ├── SKILL.md                # 引擎入口
    ├── references/             # 9 份方法论参考文件
    └── examples/               # 示例画像
```

## 模型要求

| 能力 | 原因 |
|------|------|
| 长上下文（≥ 100K tokens） | 单份文档可达 10K+ 字，四份同时在工作区 |
| 工具调用（web search） | 阶段 0.5 全网调研 |
| 中文能力 | 画像文档主体为中文 |

推荐：Claude Sonnet/Opus 4+、GPT-4o、Gemini 2.5 Pro

## License

MIT

## 关联项目

- [Engram](https://github.com/maiyangyun/engram) — Agent 记忆系统
- [OpenClaw](https://github.com/openclaw/openclaw) — Agent 运行框架
