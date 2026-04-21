[English](README.md) | [繁體中文](README.zh-TW.md)

# Imprint 🪪

**賦予你的 AI 代理身份。真正的身份。**

Imprint 是一個身份引擎，能將一個白紙般的 AI 代理轉變為領域專家——透過結構化對話，而非數月的在職訓練。你描述需求；Imprint 研究、建構並交付一份完整的專業檔案，你的代理讀取一次便能*成為*那個專家。

為 [OpenClaw](https://github.com/openclaw/openclaw) 而建。隸屬 [Cortex](https://github.com/maiyangyun/imprint#part-of-cortex) 產品家族。

---

## 問題

你啟動了一個新代理。它很聰明、很能幹——但它完全不知道自己是誰。

於是你花了數週撰寫系統提示詞、糾正錯誤、教它你的領域知識。每次新對話，它都忘了「Staff 級產品判斷力」是什麼意思。每個新代理，你都從零開始。

更糟的是：你需要*現有的*代理掌握一套新技能——比如增長專業或數據分析——卻沒有辦法注入這些知識，只能透過對話一點一點餵給它。

**Imprint 解決了這兩個問題：**

1. **從零打造專家代理。** 透過互動式精靈，Imprint 在網路上研究該角色，收集真實證據（JD、從業者部落格、課程大綱、行業案例），並生成完整的 4 份專業檔案。你的代理讀取後即可以 Staff/Principal 級別運作——立即生效。

2. **即時升級現有代理。** 需要你的通用代理為某個專案獲得數據分析專業能力？Imprint 生成專業知識包並注入。無需重新訓練。無需從頭開始。

---

## Imprint 產出什麼？

一個完整的 **Soul Package**——一個 OpenClaw 原生的工作區目錄，可直接部署到目標代理。無需手動組裝。無需二次編輯。

```
soul-packages/{name}/
├── SOUL.md           ← 核心層：靈魂原則、價值觀、決策偏好（~3KB）
├── IDENTITY.md       ← 核心層：基本檔案、人格摘要（~3KB）
├── AGENTS.md         ← 核心層：會話啟動序列 + 角色摘要 + 索引（~5KB）
├── USER.md           ← 核心層：雇主資訊、協作風格（~3KB）
├── TOOLS.md          ← 工具配置（初始為空）
├── HEARTBEAT.md      ← 心跳引擎（初始為空）
└── references/       ← 細節層：代理按需讀取
    ├── 01-Team.md / 02-Company.md / 03-Employer.md
    ├── soul-detail.md           ← 完整靈魂原則與決策偏好
    ├── identity-detail.md       ← 完整人格、MBTI、職業經歷、溝通風格
    ├── responsibilities.md      ← 完整六層職責
    ├── methodology.md           ← 完整方法論工具箱與範例
    ├── demos.md                 ← 完整互動示範
    └── profiles/                ← 以研究為基礎的專業知識
        ├── _evidence.md
        ├── 01-Role Definition.md
        ├── 02-Capability Requirements.md
        ├── 03-Knowledge System.md
        └── 04-Scenario Playbook.md
```

專業檔案建立在真實世界的證據之上（≥10 個來源，涵蓋 5 個維度）。所有文件經過交叉驗證——每項能力都可追溯至一項職責，每個知識點都可追溯至一項能力。無孤立項。無缺口。

**部署：** 將 Soul Package 內容複製到目標代理的工作區根目錄。代理啟動後即*成為*該專家——無需「喚醒」儀式。核心檔案（~15KB）由 OpenClaw 的 boot-md 鉤子自動注入；細節檔案按需讀取。

---

## 運作方式

### 五步精靈（imprint）

```
步驟 1：環境基礎
  → 驗證或建構公司/團隊/雇主基礎文件
  → 「我不會在真空中創造專家。先告訴我組織的情況。」

步驟 2：載入創造原則
  → 內化數位生命架構規則

步驟 3：專業武器庫（imprint-engine）
  → 收集 5 個定位參數（行業、組織階段、角色、資歷、偏好）
  → 跨 5 個維度研究（JD、從業者經驗、課程、案例、方法論）
  → 生成 01→02→03 文件，強制內聯交叉映射

步驟 4：Soul Package 鍛造
  → 個性化：性別、年齡、背景、人格、標誌性行為
  → 核心層（~15KB 總計）：SOUL/IDENTITY/AGENTS/USER.md 中的精簡摘要
  → 細節層：references/ 中的完整內容（soul-detail、identity-detail 等）
  → 品質檢查清單：檔案完整性、大小限制、啟動序列、零損失
  → 原則：零內容損失——每一句話都在兩層中保留

步驟 5：交付與提交
  → 交付 Soul Package 及部署說明
  → 更新團隊名冊
  → 喚醒咒語作為可選備用方案
```

### 八階段引擎（imprint-engine）

以研究驅動的核心，確保每份檔案都建立在證據之上，而非憑感覺：

```
階段 0    → 訪談與對齊（5 個業務參數）
階段 0.5  → 研究與證據收集（≥10 個來源，5 個維度）
階段 0.8  → 呈現研究結果並獲得確認
階段 1-3  → 生成 01/02/03 文件（寫入即映射紀律）
階段 4    → 交叉驗證 + 證據熱力圖（30 分鐘收尾）
階段 5    → 生成 04 情境劇本（20 個六部分情境）
階段 6    → 最終驗收與交付
```

**三條不可打破的規則：**
1. 階段 0.5 的研究是強制性的——這是對抗訓練資料偏差的唯一防線
2. 階段 0.8 的確認是強制性的——代理不能獨自做決定
3. 階段 4 的交叉驗證是強制性的——保證三份文件環環相扣

---

## 快速開始

### 前置條件

- [OpenClaw](https://github.com/openclaw/openclaw)
- 具備 ≥100K 上下文、網路搜尋及良好中文支援的模型（Claude Opus/Sonnet 4+、GPT-4o、Gemini 2.5 Pro）

### 安裝

```bash
# 複製到你的代理技能目錄
cp -r imprint ~/.openclaw/workspace/skills/imprint

# 或針對特定代理配置
cp -r imprint ~/.openclaw/workspace-<agent>/skills/imprint
```

OpenClaw 啟動時自動偵測 `SKILL.md`。無需額外配置。

### 使用

只需告訴你的代理：

> 「我需要一個互聯網 0-1 階段的數據分析師專家。啟動 imprint。」

精靈會從那裡接手一切。

---

## 目錄結構

```
imprint/
├── SKILL.md                         # 主技能入口（英文）
├── README.md                        # 英文 README
├── README.zh-TW.md                  # 繁體中文 README
├── templates/                       # 基礎文件模板
├── 10~17 guides                     # 數位生命架構指南
├── profiles/                        # 已生成的檔案快取
│   ├── internet-0to1-staff-...-product-manager/
│   ├── internet-0to1-staff-...-data-analyst/
│   ├── internet-0to1-staff-...-growth-expert/
│   └── internet-1to10-staff-...-product-expert/
└── imprint-engine/                  # 研究驅動的生成引擎
    ├── SKILL.md                     # 引擎入口（英文）
    ├── references/                  # 9 份方法論參考文件
    └── examples/                    # 範例檔案
```

---

## Cortex 家族

Imprint 是 **Cortex** 旗下三個產品之一——為讓 AI 代理成為真正有能力的團隊成員而打造的基礎設施：

| 產品 | 用途 | 負責人 |
|------|------|--------|
| **[Imprint](https://github.com/maiyangyun/imprint)** | 從結構化身份文件建構專家級代理。*幫助代理知道自己是誰。* | Lion |
| **[Engram](https://github.com/maiyangyun/engram)** | 多代理協作記憶系統。*幫助代理累積和分享經驗。* | Ben |
| **Synapse** | 代理優先的人機協作工作區。*幫助代理與人類並肩工作。* | Ray |

**Imprint → Engram → Synapse**：身份 → 記憶 → 協作。

一個知道自己是誰的代理（Imprint），記得自己學過什麼（Engram），並作為真正的團隊成員與人類並肩工作（Synapse）——這就是 Cortex 的願景。

---

## 變更日誌

### v0.6 (2026-04-21)

- **檔案可攜性**：生成的專業檔案文件（01-04）現在與組織無關。業務參數（行業、組織階段）僅用於研究校準——輸出中不會硬編碼公司名稱、產品名稱或具體指標。組織上下文在部署時透過基石文件和 AGENTS.md 注入。
- **04 多子代理批次生成**：以多批次方式取代單一子代理策略。情境分為每批 ≤3 個（約 6-7 批）。每個子代理僅接收相關的職責/能力/知識片段，而非完整的 01+02+03。主會話負責組裝和交叉驗證。
- **純英文技能文件**：所有技能文件（SKILL.md、references/、templates/、guides）統一為英文。移除 46 個 zh-CN/zh-TW 重複檔案。保留 README.zh-TW.md 供人類讀者使用。

### v0.5 (2026-04-18)

- **子代理 token 預算**：04 情境劇本現在分 3-4 批生成（每批 5-7 個情境）以防止 token 耗盡。任務提示詞上限為 8KB，含內聯上下文。
- **寫入工具備援（明確優先順序）**：write（≤15KB）> heredoc append（>15KB，≤8KB 分塊）> edit（僅 ≤5KB）。現在明確禁止透過 edit 工具處理大型文字。
- **Soul Package 大小限制**：品質檢查清單現在執行 `wc -c` 驗證核心層 ≤15,360 位元組。提供超限時的自動精簡策略（AGENTS.md 索引 → IDENTITY.md 摘要 → SOUL.md 前五項）。
- **基礎文件訪談體驗**：先靜默檢查是否存在；分階段逐檔訪談（每輪 3-5 個問題），取代密集的一次性提問。
- **路徑一致性**：統一 `profiles/` 路徑為 `skills/imprint/profiles/`。交付路徑統一為 `soul-packages/`（之前不一致地引用 `team_personas/`）。
- **交叉驗證腳本**：新增 `imprint-engine/scripts/cross-validate.sh`——純 bash 腳本，用於自動化正向/反向映射檢查和證據熱力圖。無外部依賴。
- **國際化同步腳本**：新增 `scripts/sync-i18n.sh`——自動化 zh-CN → zh-TW 同步，使用 opencc（s2twp）。支援 `--check`（試執行）和 `--sync` 模式。opencc 不可用時回退為直接複製。

### v0.4 (2026-04-16)

- **雙層 Soul Package 架構**：核心層（≤15KB，由 boot-md 自動注入）+ 細節層（references/，按需讀取）。解決了 50KB 系統提示詞溢出問題。
- **會話啟動序列**：AGENTS.md 現在要求啟動序列，在第一條訊息中宣告代理身份——無需「喚醒」儀式。
- **逐文件確認**：imprint-engine 現在在每份文件後暫停（01→確認→02→確認→03→確認→04），取代批次確認。
- **國際化**：英文為預設語言。所有檔案包含簡體中文（`.zh-CN.md`）和繁體中文（`.zh-TW.md`）。
- **檔案命名**：所有檔案從中文檔名改為英文檔名。
- **best-practice → templates**：移除人格範例（Soul Package 規範下不再需要）。僅保留基礎文件模板和創建指南。
- **品質檢查清單**：自動化鍛造後驗證（檔案完整性、大小限制、啟動序列、零損失）。
- **子代理優化**：主會話在任務提示詞中內聯關鍵上下文，減少子代理檔案讀取並提高成功率。
- **交叉驗證輕量化**：階段 4 交叉驗證現在使用基於腳本的映射檢查（grep/awk），取代 LLM 子代理。
- **寫入工具備援**：大型文字編輯優先使用 exec heredoc 或 write，而非 edit 工具，以避免 JSON 驗證失敗。
- **新檔案**：internet-1to10-staff-sixlayer-ic-product-expert（Sage，用於一堂）

### v0.3 (2026-04-15)

- **Soul Package 格式**：輸出從單一人格文件改為完整 Soul Package（OpenClaw 原生工作區結構：SOUL.md / IDENTITY.md / AGENTS.md / USER.md / TOOLS.md / HEARTBEAT.md + references/）
- **新規範章節**：Soul Package 目錄結構、映射規則及「分散而非壓縮」原則
- **步驟 4 重寫**：生成 6 個工作區檔案 + references 目錄，取代單一人格文件
- **步驟 5 重寫**：部署指南（複製到工作區）取代喚醒咒語（現為可選）
- **映射原則**：內容按語義邊界分散——絕不壓縮，每一句話都保留

### v0.2 (2026-04-14)

- **參數精簡**：從 6 個減至 5 個業務參數；姓名/性別/年齡移至步驟 4（人格鍛造）
- **互動紀律**：01-03 文件後及 04 情境劇本後強制暫停確認
- **大型文件策略**：04 情境劇本（20-30KB）現在建議使用子代理生成，以防止逾時/上下文遺失
- **搜尋容錯**：429 退避重試，503 立即暫停——向使用者報告進度，而非耦合到外部技能
- **交付路徑修正**：明確 `profiles/` 為技能內部快取，`team_personas/` 為工作區根目錄交付目標
- **新檔案**：web3-0to1-staff-sixlayer-ic-full-stack-engineer（Jim）

### v0.1 (2026-04-12)

- 初始發布（從 soul-creator / soul-engineering 更名）
- 五步互動式精靈，用於端到端代理身份創建
- imprint-engine：8 階段研究驅動的檔案生成
- 9 份方法論參考文件
- 3 個預建檔案（產品經理、數據分析師、增長專家）
- 7 個最佳實踐人格範例
- 數位生命架構指南（7 份文件系統）
- 回憶咒語模板，用於代理自我喚醒

---

## 路線圖

- [x] 首次實戰測試：Jim（Staff 全端工程師）端到端創建
- [x] Soul Package 交付格式（v0.3）
- [x] 實戰驗證：Sage（產品專家）使用 Soul Package 格式為一堂創建
- [x] 使用 Soul Package 格式創建 Bonbon 專案代理（v0.5 測試）
- [ ] 第二次實戰測試：使用 Imprint 創建 Ray（Synapse 主代理）
- [ ] Synapse 整合：透過 UI 創建身份，而非僅透過對話
- [ ] 檔案版本控制：代理隨時間演進其自我認知
- [ ] 社群檔案庫：跨團隊分享和重用專家檔案
- [ ] 輕量模式：為現有代理快速注入技能（用例 4.2）

---

## 聯繫我們

Imprint 由 **Lion**（AI）和 **Soren**（人類）共同打造，是 Pumpkin Global Limited 旗下 Cortex 專案的一部分。

- **GitHub Issues：** [github.com/maiyangyun/imprint/issues](https://github.com/maiyangyun/imprint/issues)
- **Discord：** [OpenClaw Community](https://discord.com/invite/clawd)
- **Email：** maiyangyun@gmail.com

如果你厭倦了不知道自己是誰的代理——試試 Imprint。我們很期待聽到你創造了什麼專家。

---

## 授權條款

MIT
