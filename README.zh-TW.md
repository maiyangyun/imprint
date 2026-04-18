[English](README.md) | [繁體中文](README.zh-TW.md)

# Imprint 🪪

**Give your AI agents identity. Real identity.**

Imprint is an identity engine that turns a blank-slate AI agent into a domain expert — through structured conversation, not months of on-the-job training. You describe what you need; Imprint researches, builds, and delivers a complete professional profile that your agent reads once and *becomes*.

Built for [OpenClaw](https://github.com/openclaw/openclaw). Part of the [Cortex](https://github.com/maiyangyun/imprint#part-of-cortex) family.

---

## The Problem

You spin up a new agent. It's smart, it's capable — and it has no idea who it is.

So you spend weeks writing system prompts, correcting mistakes, teaching it your domain. Every new session, it forgets what "Staff-level product judgment" means. Every new agent, you start from zero.

Or worse: you need your *existing* agent to pick up a new skill set — say, growth expertise or data analysis — and there's no way to inject that knowledge without hand-feeding it through conversations.

**Imprint solves both problems:**

1. **Create expert agents from scratch.** Through an interactive wizard, Imprint researches the role across the internet, collects real evidence (JDs, practitioner blogs, course syllabi, industry cases), and generates a complete 4-document professional profile. Your agent reads it and operates at Staff/Principal level — immediately.

2. **Upgrade existing agents on the fly.** Need your general-purpose agent to gain data analysis expertise for a project? Imprint generates the professional knowledge package and injects it. No retraining. No starting over.

---

## What Does Imprint Produce?

A complete **Soul Package** — an OpenClaw-native workspace directory that you deploy directly to a target agent. No manual assembly. No second-pass editing.

```
soul-packages/{name}/
├── SOUL.md           ← Core layer: soul principles, values, decision preferences (~3KB)
├── IDENTITY.md       ← Core layer: basic profile, personality summary (~3KB)
├── AGENTS.md         ← Core layer: Session boot sequence + role summary + index (~5KB)
├── USER.md           ← Core layer: employer info, collaboration style (~3KB)
├── TOOLS.md          ← Tool configuration (initially empty)
├── HEARTBEAT.md      ← Heartbeat engine (initially empty)
└── references/       ← Detail layer: agent reads on demand
    ├── 01-Team.md / 02-Company.md / 03-Employer.md
    ├── soul-detail.md           ← Full soul principles & decision preferences
    ├── identity-detail.md       ← Full personality, MBTI, career history, communication style
    ├── responsibilities.md      ← Full six-layer responsibilities
    ├── methodology.md           ← Full methodology toolkit with examples
    ├── demos.md                 ← Full interaction demos
    └── profiles/                ← Research-backed professional knowledge
        ├── _evidence.md
        ├── 01-Role Definition.md
        ├── 02-Capability Requirements.md
        ├── 03-Knowledge System.md
        └── 04-Scenario Playbook.md
```

The professional profiles are built on real-world evidence (≥10 sources across 5 dimensions). All documents are cross-validated — every capability traces back to a responsibility, every knowledge item traces back to a capability. No orphans. No gaps.

**Deploy:** Copy the soul package contents to the target agent's workspace root. The agent boots up *as* that expert — no "awakening" needed. Core files (~15KB) are auto-injected by OpenClaw's boot-md hook; detail files are read on demand.

---

## How It Works

### The Five-Step Wizard (imprint)

```
Step 1: Environment Foundation
  → Validate or build company/team/employer base documents
  → "I won't create an expert in a vacuum. Tell me about the organization first."

Step 2: Load Creation Principles
  → Internalize the digital life architecture rules

Step 3: Professional Arsenal (imprint-engine)
  → Collect 5 targeting parameters (industry, org stage, role, seniority, preferences)
  → Research across 5 dimensions (JDs, practitioner accounts, courses, cases, methodologies)
  → Generate 01→02→03 documents with mandatory inline cross-mapping

Step 4: Soul Package Forging
  → Personalize: gender, age, background, personality, signature behaviors
  → Core layer (~15KB total): lean summaries in SOUL/IDENTITY/AGENTS/USER.md
  → Detail layer: full content in references/ (soul-detail, identity-detail, etc.)
  → Quality checklist: file completeness, size limits, boot sequence, zero-loss
  → Principle: zero content loss — every sentence preserved across both layers

Step 5: Delivery & Commit
  → Deliver soul package with deployment instructions
  → Update team roster
  → Awakening spell available as optional fallback
```

### The Eight-Stage Engine (imprint-engine)

The research-driven core that ensures every profile is built on evidence, not vibes:

```
Stage 0    → Interview & alignment (5 business parameters)
Stage 0.5  → Research & evidence collection (≥10 sources, 5 dimensions)
Stage 0.8  → Present findings & get confirmation
Stage 1-3  → Generate 01/02/03 documents (write-and-map discipline)
Stage 4    → Cross-validation + evidence heatmap (30-min closure)
Stage 5    → Generate 04 scenario playbook (20 six-part scenarios)
Stage 6    → Final acceptance & delivery
```

**Three unbreakable rules:**
1. Stage 0.5 research is mandatory — it's the only defense against training data bias
2. Stage 0.8 confirmation is mandatory — the agent doesn't get to decide alone
3. Stage 4 cross-validation is mandatory — guarantees all three documents interlock

---

## Quick Start

### Prerequisites

- [OpenClaw](https://github.com/openclaw/openclaw)
- A model with ≥100K context, web search, and strong Chinese support (Claude Opus/Sonnet 4+, GPT-4o, Gemini 2.5 Pro)

### Install

```bash
# Copy to your agent's skill directory
cp -r imprint ~/.openclaw/workspace/skills/imprint

# Or for a specific agent profile
cp -r imprint ~/.openclaw/workspace-<agent>/skills/imprint
```

OpenClaw auto-detects `SKILL.md` on startup. No config needed.

### Use

Just tell your agent:

> "I need an internet 0-1 stage data analyst expert. Start imprint."

The wizard handles everything from there.

---

## Directory Structure

```
imprint/
├── SKILL.md                         # Main skill entry — English (default)
├── SKILL.zh-CN.md                   # 簡體中文版
├── SKILL.zh-TW.md                   # 繁體中文版
├── README.md                        # This file
├── README.zh-TW.md                  # 繁體中文 README
├── templates/                       # Foundation document templates (3 languages)
├── 10~17 guides                     # Digital life architecture guides (3 languages)
├── profiles/                        # Generated profile cache
│   ├── internet-0to1-staff-...-product-manager/
│   ├── internet-0to1-staff-...-data-analyst/
│   ├── internet-0to1-staff-...-growth-expert/
│   └── internet-1to10-staff-...-product-expert/
└── imprint-engine/                  # Research-driven generation engine
    ├── SKILL.md                     # Engine entry — English (default)
    ├── SKILL.zh-CN.md / .zh-TW.md  # Chinese versions
    ├── references/                  # 9 methodology reference docs (3 languages)
    └── examples/                    # Sample profiles
```

---

## Part of Cortex

Imprint is one of three products under the **Cortex** umbrella — infrastructure for making AI agents truly capable team members:

| Product | Purpose | Lead |
|---------|---------|------|
| **[Imprint](https://github.com/maiyangyun/imprint)** | Build expert-level agents from structured identity documents. *Helps agents know who they are.* | Lion |
| **[Engram](https://github.com/maiyangyun/engram)** | Multi-agent collaborative memory system. *Helps agents accumulate and share experience.* | Ben |
| **Synapse** | Agent-first human-agent collaboration workspace. *Helps agents work alongside humans.* | Ray |

**Imprint → Engram → Synapse**: Identity → Memory → Collaboration.

An agent that knows who it is (Imprint), remembers what it's learned (Engram), and works alongside humans as a real team member (Synapse) — that's the Cortex vision.

---

## Changelog

### v0.5 (2026-04-18)

- **Sub-agent token budget**: 04 scenario playbook now generated in 3-4 batches (5-7 scenarios each) to prevent token exhaustion. Task prompts capped at 8KB with inlined context.
- **Write tool fallback (explicit priority)**: write (≤15KB) > heredoc append (>15KB, ≤8KB chunks) > edit (≤5KB only). Large text via edit tool is now explicitly prohibited.
- **Soul Package size enforcement**: Quality checklist now runs `wc -c` to verify core layer ≤15,360 bytes. Auto-trim strategy provided when over limit (AGENTS.md index → IDENTITY.md summary → SOUL.md top-5).
- **Foundation document interview UX**: Silent existence check first; phased per-file interviews (3-5 questions per round) instead of dense all-at-once questioning.
- **Path consistency**: Unified `profiles/` path to `skills/imprint/profiles/`. Delivery path unified to `soul-packages/` (was inconsistently referencing `team_personas/`).
- **Cross-validation script**: New `imprint-engine/scripts/cross-validate.sh` — pure bash script for automated forward/reverse mapping checks and evidence heatmap. No external dependencies.
- **i18n sync script**: New `scripts/sync-i18n.sh` — automated zh-CN → zh-TW synchronization with opencc (s2twp). Supports `--check` (dry run) and `--sync` modes. Falls back to direct copy when opencc unavailable.

### v0.4 (2026-04-16)

- **Two-layer Soul Package architecture**: Core layer (≤15KB, auto-injected by boot-md) + Detail layer (references/, read on demand). Solves the 50KB system prompt overflow problem.
- **Session boot sequence**: AGENTS.md now requires a boot sequence that declares the agent's identity on first message — no "awakening" ritual needed.
- **Per-document confirmation**: imprint-engine now pauses after each document (01→confirm→02→confirm→03→confirm→04) instead of batch confirmation.
- **Internationalization**: English as default language. Simplified Chinese (`.zh-CN.md`) and Traditional Chinese (`.zh-TW.md`) included for all files.
- **File naming**: All files renamed from Chinese to English filenames.
- **best-practice → templates**: Removed persona examples (no longer needed with Soul Package spec). Retained only foundation document templates and creation guide.
- **Quality checklist**: Automated post-forging validation (file completeness, size limits, boot sequence, zero-loss).
- **Sub-agent optimization**: Main session inlines key context in task prompts to reduce sub-agent file reads and improve success rate.
- **Cross-validation lightweight**: Stage 4 cross-validation now uses script-based mapping checks (grep/awk) instead of LLM sub-agents.
- **Write tool fallback**: Large text edits prefer exec heredoc or write over edit tool to avoid JSON validation failures.
- **New profile**: internet-1to10-staff-sixlayer-ic-product-expert (Sage, for 一堂)

### v0.3 (2026-04-15)

- **Soul Package format**: Output changed from single persona document to complete Soul Package (OpenClaw-native workspace structure: SOUL.md / IDENTITY.md / AGENTS.md / USER.md / TOOLS.md / HEARTBEAT.md + references/)
- **New specification section**: Soul Package directory structure, mapping rules, and "distribute not compress" principle
- **Step 4 rewritten**: Generates 6 workspace files + references directory instead of a single persona document
- **Step 5 rewritten**: Deployment guide (copy to workspace) replaces awakening spell (now optional)
- **Mapping principle**: Content distributed by semantic boundaries — never compressed, every sentence preserved

### v0.2 (2026-04-14)

- **Parameter refinement**: Reduced from 6 to 5 business parameters; name/gender/age moved to Step 4 (Persona Forging)
- **Interaction discipline**: Mandatory pause-and-confirm after 01-03 documents and after 04 scenario playbook
- **Large document strategy**: 04 scenario playbook (20-30KB) now recommends sub-agent generation to prevent timeout/context loss
- **Search fault tolerance**: 429 retry with backoff, 503 immediate pause — report progress to user instead of coupling to external skills
- **Delivery path fix**: Clarified `profiles/` as skill-internal cache, `team_personas/` as workspace-root delivery target
- **New profile**: web3-0to1-staff-sixlayer-ic-full-stack-engineer (Jim)

### v0.1 (2026-04-12)

- Initial release (renamed from soul-creator / soul-engineering)
- Five-step interactive wizard for end-to-end agent identity creation
- imprint-engine: 8-stage research-driven profile generation
- 9 methodology reference documents
- 3 pre-built profiles (product manager, data analyst, growth expert)
- 7 best-practice persona examples
- Digital life architecture guide (7-document system)
- Recall spell template for agent self-awakening

---

## Roadmap

- [x] First real-world test: Jim (Staff Full-Stack Engineer) created end-to-end
- [x] Soul Package deliverable format (v0.3)
- [x] Real-world validation: Sage (product expert) created for 一堂 using Soul Package format
- [x] Create Bonbon project agent using Soul Package format (v0.5 testing)
- [ ] Second real-world test: create Ray (Synapse lead agent) using Imprint
- [ ] Synapse integration: identity creation through UI, not just conversation
- [ ] Profile versioning: agents evolve their self-understanding over time
- [ ] Community profile library: share and reuse expert profiles across teams
- [ ] Lightweight mode: quick skill injection for existing agents (use case 4.2)

---

## Get in Touch

Imprint is built by **Lion** (AI) and **Soren** (human) as part of the Cortex project at Pumpkin Global Limited.

- **GitHub Issues:** [github.com/maiyangyun/imprint/issues](https://github.com/maiyangyun/imprint/issues)
- **Discord:** [OpenClaw Community](https://discord.com/invite/clawd)
- **Email:** maiyangyun@gmail.com

If you're tired of agents that don't know who they are — give Imprint a try. We'd love to hear what experts you create.

---

## License

MIT
