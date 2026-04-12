# 🦞 Imprint Engine — OpenClaw 技能包

为任意行业专家级岗位生成完整的 Agent 画像文档，让 Agent 通过"读文档回忆自身"上手即成为对标全球一线公司 Staff/Principal 级别的专家数字员工。

---

## 安装方法

### 方法一：直接复制到 OpenClaw 技能目录（推荐）

```bash
# 1. 找到你的 OpenClaw 工作目录（通常是 ~/.openclaw 或你的项目目录）
# 2. 把 imprint-engine 整个文件夹复制到技能目录

# 全局安装（所有 Agent 可用）：
cp -r imprint-engine ~/.openclaw/skills/imprint-engine

# 或项目级安装（仅当前项目可用，优先级更高）：
cp -r imprint-engine <你的项目目录>/skills/imprint-engine

# 或个人 Agent 级安装：
cp -r imprint-engine ~/.agents/skills/imprint-engine
```

### 方法二：通过 symlink 挂载（方便开发调试）

```bash
# 保持原始文件夹位置不变，通过软链接挂载
ln -s /你的/imprint-engine/路径 ~/.openclaw/skills/imprint-engine
```

### 方法三：通过 openclaw.json 配置 extraDirs

在 `~/.openclaw/openclaw.json` 中添加：

```json5
{
  "skills": {
    "load": {
      "extraDirs": [
        "/你的/imprint-engine/父目录"
      ]
    }
  }
}
```

---

## 验证安装

安装后重启 OpenClaw，然后：

```
你好，我想做一个数据分析师的专家画像。
```

如果 OpenClaw 触发了灵魂工程技能（开始问你六个核心参数：岗位名称、行业赛道、组织阶段等），说明安装成功。

你也可以通过命令行验证：

```bash
openclaw skills list | grep imprint-engine
```

---

## 目录结构

```
imprint-engine/
├── SKILL.md                          # 技能主文件（OpenClaw 入口）
├── README.md                         # 本文件
├── references/                       # 方法论参考文件（9 份）
│   ├── 调研方法论.md                  # 阶段 0.5 执行手册
│   ├── 证据库模板.md                  # _evidence.md 编号与引用规则
│   ├── 组织阶段分型.md                # 阶段 0 执行手册
│   ├── 结构模式选择.md                # 严格六层 vs Path C
│   ├── 去管理化画像指南.md             # IC 画像改写规则
│   ├── 文档模板.md                    # 阶段 1-3 执行手册
│   ├── 交叉验证.md                    # 阶段 4 执行手册
│   ├── 场景生成指南.md                # 阶段 5 执行手册
│   └── 回忆咒语模板.md                # 阶段 6.3 执行手册
└── examples/                         # 示例画像
    └── data-analyst/                 # 数据分析专家（精选样板）
        ├── 01-岗位职责定义.md          # 完整 01 样板
        └── 05-回忆咒语.md             # 完整 05 咒语样板
```

---

## 配置与定制

### 1. 与特定 LLM 模型配合

灵魂工程技能不限定底层模型，但对模型能力有最低要求：

| 能力要求 | 原因 |
|---|---|
| 长上下文（≥ 100K tokens） | 单份文档可达 10K+ 字，四份同时在工作区 |
| 工具调用（web search） | 阶段 0.5 需要全网调研 |
| 中文能力 | 画像文档主体为中文 |

推荐模型：Claude Sonnet/Opus 4+、GPT-4o、Gemini 2.5 Pro。本地模型需 70B+ 参数。

### 2. 修改默认参数

如果你主要做某个行业/阶段的画像，可以在 SKILL.md 的阶段 0 参数表里设置默认值。例如编辑 SKILL.md 找到参数表，在"说明"列添加 `（默认：互联网 SaaS）`。

### 3. 添加新的参考实现

每做完一个新工种画像，把它放到 `examples/` 目录下作为参考。更多样板 = Agent 写新画像时有更多对照。

### 4. 输出目录配置

默认情况下，生成的画像会放在 Agent 工作目录下的 `profiles/<role-name>/`。如果需要改变输出路径，可在 SKILL.md 阶段 6.3 的交付包结构部分修改路径模板。

---

## 使用流程简述

1. **触发**：对 OpenClaw 说"帮我做一个 XX 专家画像"
2. **访谈**：Agent 问你六个参数（岗位/行业/组织阶段/水位/结构模式/去管理化）
3. **调研**：Agent 自动全网搜索，形成证据库
4. **确认**：Agent 展示骨架草案，你确认或调整
5. **生成**：Agent 按 01→02→03 顺序生成三份文档，边写边做反向映射
6. **验证**：Agent 自动做交叉验证 + 证据热图
7. **场景**：Agent 生成 20 个六段式场景，每个都做专业对手测试
8. **交付**：Agent 组装五份文档 + 证据库 + 方法论复盘

全流程预计 2-4 小时（取决于模型速度和你的确认速度）。

---

## 从 Cowork 版本迁移

如果你之前在 Claude Cowork 中使用过灵魂工程（通过 `methodology/SKILL.md`），迁移很简单：

1. 本 OpenClaw 版本的 SKILL.md 是从 Cowork 版本精简而来，核心方法论完全一致
2. `references/` 下的 9 份文件与 Cowork 版本的 `methodology/references/` 完全相同
3. 已有的画像文件（`profiles/` 目录）可以直接放到 `examples/` 下作为参考
4. 唯一区别：OpenClaw 版本的 SKILL.md 采用了 OpenClaw 要求的 YAML frontmatter 格式

---

## 许可与贡献

本技能包随灵魂工程项目发布。欢迎提交新的工种画像作为参考实现。

如果你在使用过程中发现方法论的改进点，请记录到 `retrospectives/` 目录——每次跑通都要做复盘，这是方法论自我进化的核心机制。
