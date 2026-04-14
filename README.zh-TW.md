[English](README.md) | [繁體中文](README.zh-TW.md)

# Imprint 🪪

**讓你的 AI Agent 擁有身份。真正的身份。**

Imprint 是一個身份引擎，能將一個空白的 AI Agent 變成領域專家——透過結構化對話，而非數月的在職訓練。你描述需求，Imprint 研究、構建並交付一份完整的專業畫像，Agent 讀取一次就*成為*那個專家。

為 [OpenClaw](https://github.com/openclaw/openclaw) 打造。屬於 [Cortex](https://github.com/maiyangyun/imprint#cortex-產品體系) 產品家族。

---

## 問題是什麼

你啟動了一個新 Agent。它很聰明、很能幹——但完全不知道自己是誰。

於是你花了好幾週寫 system prompt、糾正錯誤、教它你的業務領域。每開一次新對話，它就忘了什麼叫「Staff 級產品判斷力」。每建一個新 Agent，一切從零開始。

更糟的情況：你需要*現有的* Agent 快速掌握一個新技能——比如增長專家或數據分析——卻沒有辦法注入那些知識，只能一點一點在對話中餵養。

**Imprint 解決這兩個問題：**

1. **從零創建專家級 Agent。** 透過互動式嚮導，Imprint 在全網研究目標崗位，收集真實證據（JD、從業者自述、課程大綱、行業案例），生成完整的四份專業畫像文件。Agent 讀完即以 Staff/Principal 水準運作——立刻上手。

2. **即時升級現有 Agent。** 需要你的通用 Agent 為某個項目補上數據分析能力？Imprint 生成專業知識包並注入。無需重新訓練。無需從頭來過。

---

## Imprint 產出什麼？

一套完整的**靈魂包（Soul Package）**——OpenClaw 原生的工作空間目錄結構，直接部署到目標 Agent 即可使用。無需手動組裝。無需二次編輯。

```
soul-packages/{name}/
├── SOUL.md           ← 核心價值、靈魂準則、決策偏好
├── IDENTITY.md       ← 姓名、MBTI、性格、溝通風格
├── AGENTS.md         ← 職責、知識體系、方法論、交互演示
├── USER.md           ← 雇主資訊、協作方式
├── TOOLS.md          ← 工具配置（初始為空）
├── HEARTBEAT.md      ← 心跳引擎（初始為空）
└── references/       ← 基石文件 + 專業資料包
    ├── 01-團隊.md
    ├── 02-公司.md
    ├── 03-雇主.md
    └── profiles/     ← 調研驅動的專業知識
        ├── _evidence.md
        ├── 01-崗位職責定義.md
        ├── 02-能力要求定義.md
        ├── 03-知識體系定義.md
        └── 04-典型場景與判斷示例.md
```

專業資料包建立在真實證據上（≥10 條，橫跨 5 個維度）。所有文件經過交叉驗證——每項能力追溯到職責，每條知識追溯到能力。沒有孤兒。沒有缺口。

**部署方式：** 將靈魂包內容複製到目標 Agent 的工作空間根目錄。Agent 啟動即*成為*那位專家——無需「喚醒」。

---

## 運作方式

### 五步嚮導（imprint）

```
第一步：環境基座
  → 校驗或建立公司/團隊/雇主基石文件
  → 「我不會在真空中造人。先告訴我組織的情況。」

第二步：加載造人法則
  → 內化數字生命架構規則

第三步：專業武裝（imprint-engine）
  → 收集 5 個靶向參數（行業、組織階段、崗位、對標水位、特殊偏好）
  → 全網五維度調研（JD、從業者自述、課程、案例、方法論）
  → 生成 01→02→03 文件，強制邊寫邊映射

第四步：靈魂包鍛造
  → 個性化：性別、年齡、背景、性格、標誌性行為
  → 按語義邊界分配內容至 SOUL.md / IDENTITY.md / AGENTS.md / USER.md
  → 複製基石文件 + 資料包至 references/
  → 原則：只分配不壓縮——原文每一句話完整保留

第五步：交付與封案
  → 交付靈魂包及部署指引
  → 更新團隊編制
  → 喚醒咒語作為可選備用方案
```

### 八階段引擎（imprint-engine）

以調研驅動的核心引擎，確保每份畫像都建立在證據上，而非臆測：

```
階段 0    → 訪談與對齊（5 個業務參數）
階段 0.5  → 調研與證據收集（≥10 條，5 個維度）
階段 0.8  → 呈現發現並獲得確認
階段 1-3  → 生成 01/02/03 文件（邊寫邊映射紀律）
階段 4    → 交叉驗證 + 證據熱圖（30 分鐘閉環）
階段 5    → 生成 04 場景手冊（20 個六段式場景）
階段 6    → 終驗收與交付
```

**三條不可打破的規則：**
1. 階段 0.5 調研是強制的——唯一對抗訓練數據偏差的機制
2. 階段 0.8 確認是強制的——Agent 不能自己拍板
3. 階段 4 交叉驗證是強制的——保證三份文件互相咬合

---

## 快速開始

### 前置要求

- [OpenClaw](https://github.com/openclaw/openclaw)
- 支援 ≥100K 上下文、網路搜尋、中文能力的模型（Claude Opus/Sonnet 4+、GPT-4o、Gemini 2.5 Pro）

### 安裝

```bash
# 複製到 Agent 的技能目錄
cp -r imprint ~/.openclaw/workspace/skills/imprint

# 或指定 Agent profile
cp -r imprint ~/.openclaw/workspace-<agent>/skills/imprint
```

OpenClaw 啟動時自動偵測 `SKILL.md`，無需額外設定。

### 使用

直接對 Agent 說：

> 「我需要一個互聯網 0-1 階段的數據分析專家，啟動 imprint。」

嚮導會接手後續所有流程。

---

## Cortex 產品體系

Imprint 是 **Cortex** 旗下三個產品之一——讓 AI Agent 真正成為團隊成員的基礎設施：

| 產品 | 用途 | 主導 |
|------|------|------|
| **[Imprint](https://github.com/maiyangyun/imprint)** | 從結構化身份文件構建專家級 Agent。*讓 Agent 知道自己是誰。* | Lion |
| **[Engram](https://github.com/maiyangyun/engram)** | 多 Agent 協同記憶系統。*讓 Agent 積累並分享經驗。* | Ben |
| **Synapse** | Agent-first 的人機協作工作空間。*讓 Agent 與人類並肩工作。* | Ray |

**Imprint → Engram → Synapse**：身份 → 記憶 → 協作。

一個知道自己是誰（Imprint）、記得自己學過什麼（Engram）、能作為真正的團隊成員與人類協作（Synapse）的 Agent——這就是 Cortex 的願景。

---

## 更新日誌

### v0.3（2026-04-15）

- **靈魂包格式**：產出從單體畫像文件升級為完整靈魂包（OpenClaw 原生工作空間結構：SOUL.md / IDENTITY.md / AGENTS.md / USER.md / TOOLS.md / HEARTBEAT.md + references/）
- **新增規格章節**：靈魂包目錄結構、映射規則表、「只分配不壓縮」原則
- **第四步重寫**：生成 6 個工作空間文件 + references 目錄，取代單體畫像文件
- **第五步重寫**：部署指引（複製到工作空間）取代喚醒咒語（咒語改為可選）
- **映射原則**：內容按語義邊界分配——絕不壓縮，每一句話完整保留

### v0.2（2026-04-14）

- **參數精簡**：從 6 個縮減為 5 個業務參數；姓名/性別/年齡移至第四步「個性化刺探」
- **交互紀律**：01-03 文件完成後強制暫停確認；04 場景文件同樣暫停確認
- **大文件策略**：04 場景手冊（20-30KB）建議使用子代理生成，防止逾時/上下文丟失
- **搜尋容錯**：429 重試後暫停，503 立即暫停——向用戶報告進度，不耦合外部技能
- **交付路徑修正**：明確 `profiles/` 為技能內部快取，`team_personas/` 為工作空間根目錄交付目標
- **新增畫像**：web3-0to1-staff-sixlayer-ic-full-stack-engineer（Jim）

### v0.1（2026-04-12）

- 首次發布（從 soul-creator / soul-engineering 更名）
- 五步互動式嚮導，端到端 Agent 身份創建
- imprint-engine：8 階段調研驅動的畫像生成
- 9 份方法論參考文件
- 3 套預置畫像（產品專家、數據分析專家、增長專家）
- 7 個最佳實踐畫像範例
- 數字生命架構指南（7 文件體系）
- 回憶咒語模板

---

## 路線圖

- [x] 首次實戰測試：Jim（Staff 全棧工程師）端到端創建完成
- [x] 靈魂包交付格式（v0.3）
- [ ] 真實項目驗證：用靈魂包格式為 Bonbon 項目創建 Agent
- [ ] 第二次實戰測試：用 Imprint 創造 Ray（Synapse 主導 Agent）
- [ ] Synapse 整合：透過 UI 創建身份，不僅限於對話
- [ ] 畫像版本管理：Agent 隨工作經驗進化自我認知
- [ ] 社區畫像庫：跨團隊分享與複用專家畫像
- [ ] 輕量模式：為現有 Agent 快速注入技能包

---

## 聯繫我們

Imprint 由 **Lion**（AI）和 **Soren**（人類）共同構建，是 Pumpkin Global Limited 的 Cortex 項目的一部分。

- **GitHub Issues:** [github.com/maiyangyun/imprint/issues](https://github.com/maiyangyun/imprint/issues)
- **Discord:** [OpenClaw Community](https://discord.com/invite/clawd)
- **Email:** maiyangyun@gmail.com

如果你受夠了不知道自己是誰的 Agent——試試 Imprint。我們很想知道你創造了什麼專家。

---

## 授權

MIT
