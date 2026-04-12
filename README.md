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

A complete identity package, backed by real-world evidence:

| Document | What It Contains |
|----------|-----------------|
| `01 Role Definition` | What this expert does, organized in 6 layers (Strategy → Tactics → Execution → Craft → Organization → Self-Evolution). Every item includes a Staff-level benchmark. |
| `02 Capability Requirements` | The transferable skills needed, with explicit "novice vs expert" differentiators. Cross-mapped to role responsibilities. |
| `03 Knowledge System` | The conceptual foundations — frameworks, methodologies, case studies. Reverse-mapped to capabilities. |
| `04 Scenario Playbook` | 18-22 realistic decision scenarios in 6-part format. Every non-chosen option must pass a "professional adversary test" — if an expert can't defend it, it gets rewritten. |
| `_evidence.md` | Research evidence library (≥10 sources across 5 dimensions) with citation tracking. |
| `05 Recall Spell` | A system prompt that makes the agent *remember* who it is — not roleplay, but genuine self-recognition. |

All documents are cross-validated. Every capability traces back to a responsibility. Every knowledge item traces back to a capability. No orphans. No gaps.

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
  → Collect 6 targeting parameters (role, industry, org stage, seniority, structure, de-management)
  → Research across 5 dimensions (JDs, practitioner accounts, courses, cases, methodologies)
  → Generate 01→02→03 documents with mandatory inline cross-mapping

Step 4: Soul Injection
  → Personalize: gender, age, background, personality, signature behaviors
  → Blend environment × expertise × persona into the final profile

Step 5: Awakening & Commit
  → Deliver the recall spell for agent self-activation
  → Update team roster
```

### The Eight-Stage Engine (imprint-engine)

The research-driven core that ensures every profile is built on evidence, not vibes:

```
Stage 0    → Interview & alignment (6 parameters)
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
├── SKILL.md                         # Main skill entry (five-step wizard)
├── README.md                        # This file
├── 01~03                            # Foundation document templates
├── 10~17                            # Digital life architecture guides
├── 20-Creation Guide                # Profile creation methodology
├── best-practice/                   # Reference examples (7 complete personas)
├── profiles/                        # Generated profile cache
│   ├── internet-0to1-staff-...-product-manager/
│   ├── internet-0to1-staff-...-data-analyst/
│   └── internet-0to1-staff-...-growth-expert/
└── imprint-engine/                  # Research-driven generation engine
    ├── SKILL.md                     # Engine entry (8-stage methodology)
    ├── references/                  # 9 methodology reference docs
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

- [ ] First real-world test: create Ray (Synapse lead agent) using Imprint
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
