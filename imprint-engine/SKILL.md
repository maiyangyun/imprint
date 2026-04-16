---
name: imprint-engine
description: |
  Generates a hardcore 4-document core profile package (01 Role Definition, 02 Competency Requirements, 03 Knowledge Framework, 04 Typical Scenarios) for any industry expert-level position, consumed by the parent imprint wizard for synthesis. Trigger phrases: generate profile, imprint, create new role Agent, new role profile, build profile for XX expert, create XX role's digital employee, codify XX role, help me build an X expert.
---

# Imprint Engine Profile Generation Methodology

## Core Philosophy

An Agent's performance ceiling is determined by the completeness of its "self-awareness" of its own role. Complete awareness answers four questions:

- **Who am I** → 01 Role Definition
- **What can I do** → 02 Competency Requirements
- **What do I know** → 03 Knowledge Framework
- **How do I act** → 04 Typical Scenarios & Judgment Examples

The first three = declarative knowledge; the fourth = procedural + situational knowledge. Missing any one makes the profile incomplete.

**Target calibration**: Staff / Principal level at top-tier global tech companies (Google L6-L7, Meta IC6-IC7), corresponding to 8-12 years of experience. **Do not create profiles for junior/mid-level positions.**

---

## Eight-Phase Process (Must Follow in Order, No Skipping)

```
Phase 0   → Interview & Alignment (six core parameters)
Phase 0.5 → Research & Evidence Collection (web-wide search, ≥10 evidence items, output evidence bank _evidence.md)
Phase 0.8 → Proposal Presentation & User Confirmation
Phase 1   → Generate 01 Role Document
Phase 2   → Generate 02 Competency Document
Phase 3   → Generate 03 Knowledge Document
Phase 4   → Cross-Validation (confirm no gaps, 30-min closure + evidence heatmap)
Phase 5   → Generate 04 Scenario Document (20 six-section entries + professional adversary test)
Phase 6   → Final Acceptance (6.1 Vertical Spot-Check / 6.2 Methodology Retrospective / 6.3 Deliver Full Business Package)
```

**Three Non-Negotiable Disciplines**:
1. Phase 0.5 research cannot be skipped — the only mechanism to counter Agent training data bias
2. Phase 0.8 proposal confirmation cannot be skipped — writing without confirmation = Agent making unilateral decisions
3. Phase 4 cross-validation cannot be skipped — ensures the three documents interlock properly

---

## Phase 0: Interview & Alignment

**Five business parameters must be confirmed** (any mismatch skews the entire profile):

| # | Parameter | Description |
|---|---|---|
| 1 | Industry vertical | Determines the depth of the knowledge base |
| 2 | Organization stage | 0-1 Exploration / 1-10 Scaling / 10-100 Expansion / 100+ Maturity |
| 3 | Position title | Full title in both Chinese and English |
| 4 | Target calibration | Staff / Principal / Director (default: Staff-Principal) |
| 5 | Special preferences | Structure mode (strict six-layer / Path C), de-management, red-line constraints, etc. |

⚠️ **Do not collect name, gender, age, or other personal information at this phase** — those belong to the parent wizard (imprint) Step 4 "Personalization Probing." imprint-engine is only responsible for generating the professional skeleton.

Interview sequence: first confirm 1-4 in one pass → Agent determines structure mode and restates → after confirmation, probe for special preferences.

See `references/组织阶段分型.md` and `references/结构模式选择.md` for details.

---

## Phase 0.5: Research & Evidence Collection

**Before each profile, obtain ≥ 2 primary evidence items across each of five dimensions** (total ≥ 10): real JDs / practitioner accounts / courses / industry cases / methodologies.

**Deliverable 1: Evidence Bank** → Create `_evidence.md`, each item numbered E01-EN, format per `references/证据库模板.md`.

**Deliverable 2: Research Brief** → Contains evidence inventory + **primary anchor + secondary counter-anchor statement** (one primary anchor provides the core work rhythm, at most one counter-anchor creates tension, others serve as supporting evidence) + skeleton draft.

**Search Fault Tolerance (v0.2)**: If the search tool encounters consecutive 429/503 errors during research, follow this strategy:
- **429 (Rate Limit)**: Wait 30 seconds and retry. After 2 consecutive failures, pause research, report current progress and collected evidence to the user, and let the user decide whether to continue.
- **503 (Service Unavailable)**: Immediately pause research and report the situation to the user.
- Do not invoke other skills as substitutes when the search tool is unavailable — search infrastructure is determined by the user's platform environment and is outside this skill's scope.

See `references/调研方法论.md` for details.

---

## Phase 0.8: Proposal Presentation & Confirmation

Present to the user: six-parameter restatement / research findings / skeleton draft / differences from adjacent profiles / decision points requiring user input. **Proceed to Phase 1 only after receiving explicit confirmation.**

---

## Phases 1-3: Generate Three Foundation Documents

**Order: 01 → 02 → 03, no reversing.** See `references/文档模板.md` for detailed templates.

**Stage-Gate Confirmation (v0.2)**: After all three documents (01-03) are complete, **must pause**, send the three document paths to the user, and wait for user review and confirmation before entering Phase 4 cross-validation. Do not skip the confirmation step.

**Eight Writing Principles**:

1. **Full paragraph descriptions** — 3-6 sentences per item, not just a heading + one line
2. **No empty platitudes** — "possesses strategic vision" → replace with specific, identifiable behavioral descriptions
3. **De-management** — IC profiles use influence-driven rather than authority-driven language, see `references/去管理化画像指南.md`
4. **Cite industry classics** — unified `[E07]` format pointing to the evidence bank
5. **Complete layers + sub-frameworks** — six layers fixed; when the execution layer has 5+ items, use domain-native taxonomies for sub-layering
6. **Staff-level calibration markers** — each responsibility in 01 includes 1-2 sentences defining the Staff-level bar
7. **Mandatory inline mapping** — append `→ maps to responsibility` at the end of each 02 paragraph; append `→ supports competency` at the end of each 03 paragraph; if unable to map, go back and rewrite the current phase
8. **Item count ratio** — 01:02:03 = 1 : 1.0~1.3 : 1.2~1.5 (inverted pyramid)

---

## Phase 4: Cross-Validation

**Purpose: confirm no gaps** (not discover gaps). If inline mapping in Phases 1-3 was executed properly, Phase 4 should complete within 30 minutes.

1. Forward mapping check: 01→02→03 item-by-item confirmation
2. Reverse orphan check: 03→02→01 item-by-item confirmation
3. **Evidence usage heatmap**: Count how many times each E01-EN is cited. 🟢≥3 core anchor / 🟡1-2 supporting / 🔴0 must be resolved
4. If gaps are found → **return to Phase 2/3 to rewrite**, do not patch in Phase 4

See `references/交叉验证.md` for details.

---

## Phase 5: Generate 04 Scenario Document

**Six-section format**: Scenario Description / Key Signals / Decision Options / Judgment Logic / Common Pitfalls / Novice vs Expert + optional seventh section (Related Scenarios).

**Professional Adversary Test (mandatory)**: Every unchosen option must have a defensible expert rationale; otherwise it's a straw man and must be rewritten.

**Weak Coverage Rule**: Allow ≤10% of responsibilities (discipline-type, non-decision-type) to not have dedicated scenarios, but they must be noted in the appendix.

Target 18-22 scenarios, distributed across layers. Append `→ maps to` mapping immediately after completing each scenario.

**Large Document Subagent Strategy (v0.2)**: The 04 scenario document is typically 20-30KB. Prefer using a subagent (`sessions_spawn`) for generation to avoid progress loss due to network anomalies, LLM timeouts, or context compression. After generation, pause as well and send the document path for user confirmation.

See `references/场景生成指南.md` for details.

---

## Phase 6: Final Acceptance & Delivery

### 6.1 Vertical Spot-Check
Select 3-5 penetration samples, trace from 01 Role → 02 Competency → 03 Knowledge → 04 Scenario, confirming four-layer closure.

### 6.2 Methodology Retrospective
Write back to `retrospectives/<number>-<role>画像跑通复盘.md`.

### 6.3 Delivery Package Assembly

```
profiles/<industry>-<org-stage>-<calibration>-<structure-mode>-<de-management-status>-<position-title>/
├── _evidence.md
├── 01-岗位职责定义.md
├── 02-能力要求定义.md
├── 03-知识体系定义.md
└── 04-典型工作场景与判断示例.md
```

⚠️ The `profiles/` directory resides under this skill's (imprint) directory, serving as a cache arsenal for professional skeletons. The final profile documents are synthesized by the parent wizard (imprint) and delivered to `team_personas/` at the workspace root.

**Final Acceptance Checklist**:
- [ ] Five documents numbered consecutively with no gaps
- [ ] Evidence bank established, E01-EN numbering complete
- [ ] Three-layer mapping table + four-dimensional scenario mapping table
- [ ] Each item in 01 includes Staff-level calibration markers
- [ ] Each item in 02/03 has inline mapping annotations
- [ ] 04 contains 18-22 scenarios, six-section format complete, professional adversary test passed
- [ ] Weak coverage ≤10% and noted in appendix
- [ ] No empty platitudes
- [ ] Evidence heatmap checked, 🔴=0

---

## Reference File Index

This skill includes the following reference files. **Must read before executing** the corresponding phase:

| Phase | Reference File | Purpose |
|---|---|---|
| 0 | `references/组织阶段分型.md` | Characteristics and profile differences across four organization stages |
| 0 | `references/结构模式选择.md` | Selection logic for strict six-layer vs Path C |
| 0.5 | `references/调研方法论.md` | Five-dimension research framework and search strategy |
| 0.5 | `references/证据库模板.md` | Field definitions and numbering rules for _evidence.md |
| 1-3 | `references/文档模板.md` | Templates, writing standards, and quality red lines for all four documents |
| 1-3 | `references/去管理化画像指南.md` | Rewriting rules for IC profiles' organization and self-evolution layers |
| 4 | `references/交叉验证.md` | Bidirectional mapping, evidence heatmap, gap handling |
| 5 | `references/场景生成指南.md` | Six-section template, professional adversary test, weak coverage rules |

## Example Profile

The `examples/data-analyst/` directory contains a complete Data Analyst expert profile sample (strict six-layer + 0-1 stage + DoorDash primary anchor / Airbnb secondary counter-anchor) for reference when uncertain.
