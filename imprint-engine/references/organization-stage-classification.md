# Organization Stage Classification: Profile Differences for the Same Role Across Stages

This file is the execution manual for Stage 0 of `SKILL.md` (parallel to `structure-pattern-selection.md`). **Organization stage is one of the core variables determining profile content** — it determines the breadth of role boundaries, infrastructure dependency, combat picture, and the scope of knowledge to be invoked for the same role.

**Starting to write a profile without clarifying the organization stage is equivalent to guessing by feel.**

---

## Why Organization Stage Matters

In the interview stage, when the user tells you "we need a profile for XX role," if you don't clarify the organization stage, you'll default to writing with "some average level" — typically tilted toward mature-company division-of-labor profiles, because that's the mainstream sample on the internet for JDs. But this leads to:

- When the profile is used in an early-stage team: the Agent will suggest "have the data team set up a data warehouse" — but the user's team has no data team, they have to do it themselves
- When used in a mature team: the Agent will overly emphasize "full-stack combat" — but the user is in a highly specialized organization, needing to focus on their own depth instead

**The same role, same level, can have profiles that differ by 40-60% across stages.** This isn't fine-tuning; it's an entire shift in the center of gravity of responsibilities.

---

## Characteristics of Four Organization Stages

### Stage A: 0-1 Exploration Period (Seed/Angel/Pre-A)

**Team Size**: 3-30 people
**Typical Characteristics**:
- Core proposition is "finding PMF" — product, market, and business model are all in validation
- Organization boundaries are fuzzy, one person wearing multiple hats is the norm
- No dedicated infrastructure teams (data, platform, DevOps are all shouldered by the business team)
- Decisions heavily rely on founder intuition + rapid iteration, with few "processes" and "norms"
- Resources are extremely scarce, pursuing "minimum investment to falsify/validate hypotheses"

**Representative Company Stages**: Early-stage startups before Series A, MVP-stage internal incubation projects

### Stage B: 1-10 Early Scaling (Series A-B)

**Team Size**: 30-150 people
**Typical Characteristics**:
- PMF is initially validated, starting to explore scaling paths
- Professional specialization begins, but not fine-grained (a data analyst may simultaneously handle BI, experiments, and reports)
- Infrastructure starts being built but is incomplete (self-built data warehouse prototype, simple experiment tools)
- Processes begin to form but remain flexible (OKRs exist but aren't rigid)
- Key action is "finding scalable growth paths + establishing replicable playbooks"

**Representative Company Stages**: Series A-B growth-stage companies, vertical-track players who just completed PMF

### Stage C: 10-100 Scaling Expansion (Series C to Pre-IPO)

**Team Size**: 150-1500 people
**Typical Characteristics**:
- Organization has entered "multiple business lines in parallel" stage
- Clear division of labor, mature job level system, each role has clear responsibility boundaries
- Infrastructure teams are independent (data platform, experiment platform, CI/CD teams are fully formed)
- Processes start mattering (Code Review, PRD review, A/B specifications)
- Key action is "multi-business-line coordination + organizational capability replication and accumulation"

**Representative Company Stages**: Series C-D expansion companies, pre-IPO unicorns

### Stage D: 100+ Mature Stage (Public Companies/Big Tech)

**Team Size**: 1500+ people
**Typical Characteristics**:
- High specialization, each role is responsible for only one well-defined slice
- Infrastructure systems are extremely mature (data middleware, experiment platforms, AI-assisted analytics toolchains)
- Process-driven, decisions rely on data and review meetings
- Even tiny optimizations are worth deep analysis (because traffic/user base is large enough)
- Key action is "mining increments in refinement + maintaining innovation in mature markets"

**Representative Company Stages**: Google, Meta, Amazon, ByteDance, Alibaba, Tencent, Meituan and other big tech

---

## Four Types of Impact of Organization Stage on the Profile

### Impact 1: Role Boundary Breadth

**0-1 Stage**: Role boundaries are fuzzy, "do a little bit of everything"
**100+ Stage**: Role boundaries are clear, "only do my slice but do it excellently"

**Data Analyst Expert Comparison**:
| Dimension | 0-1 Stage | 100+ Stage |
|---|---|---|
| Data Collection | Write your own tracking, do your own data governance | Data engineering team handles it |
| Data Storage | Build your own BigQuery/ClickHouse data warehouse | Data platform team handles it |
| Analytics Tools | Select and maintain Metabase/Superset yourself | Use the company's unified internal BI tool |
| Experiments | Write your own A/B traffic splitting logic | Use company experiment platform, only responsible for experiment design |
| Reporting | Report directly to the founder | Through multiple reporting chains |

### Impact 2: Infrastructure Dependency

**0-1 Stage**: Assume "infrastructure doesn't exist" — the role must be able to build toolchains themselves
**100+ Stage**: Assume "infrastructure is given" — the role only needs to know how to use mature tools

This determines the content scope of the **03 Knowledge document**:
- Early-stage requires knowledge of "data tracking spec design, data warehouse modeling (Kimball methodology), BI tool selection"
- Mature-stage requires knowledge of "SRM diagnosis on experiment platforms, company internal metric systems, how to collaborate with the data team"

### Impact 3: Combat Picture and Time Granularity

**0-1 Stage**:
- Time granularity: decisions made in "days"
- Typical day: check yesterday's key metrics in the morning, discuss a hypothesis with the founder at noon, run a rapid experiment in the afternoon
- Fix wrong decisions quickly; values "learning fast" over "doing right"

**100+ Stage**:
- Time granularity: "biweekly/monthly"
- Typical day: run SQL for deep analysis, write PRD-level analysis reports, hold review meetings with PM/Eng/Design
- Wrong decisions cost more (millions of users affected); values "rigor" over "speed"

This determines the selection and tension of the **04 Scenarios document**:
- Typical scenario in 0-1 stage: "Sample size too small — should we conclude or wait?"
- Typical scenario in 100+ stage: "Experiment is significant but effect size is small — is it worth launching?"

### Impact 4: Connotations of Organization Layer and Self-Evolution Layer

**0-1 Stage Organization Layer**:
- "Collaboration" = direct daily dialogue with founder, product, engineering
- "Mentorship" = not yet leading people; focus is self-empowerment
- "Mechanisms" = don't need to be heavy; focus is fast execution

**100+ Stage Organization Layer**:
- "Collaboration" = cross-department, cross-timezone, cross-product-line complex coordination
- "Mentorship" = mentoring junior analysts, building mentorship mechanisms
- "Mechanisms" = analysis specifications, code review, knowledge repository platforms

---

## Stage Judgment and Interview Questions

### Judgment Criteria

In Stage 0 interviews, confirm the user's mental organization stage with these signals:

**Signal 1: User's description of work content**
- "I have to build the data platform myself" → 0-1 or 1-10
- "We have a dedicated X team" → 10-100 or 100+
- "I report directly to the CEO" → 0-1 or 1-10
- "I report to a Director who reports to a VP" → 100+

**Signal 2: Mentioned tool stack**
- "We use Metabase/Superset" → early stage
- "We have internal XX platform" → mature stage

**Signal 3: Described decision-making method**
- "Founder decides" → 0-1
- "OKR alignment + data review" → 10-100 or 100+

### Interview Question Template

In Stage 0 multi-choice questions, include the organization stage as **a mandatory standalone item**, not merged into "industry track":

```
Organization Stage (determines the same role's responsibility center and infrastructure dependency):
[A] 0-1 Exploration Period (Seed/Angel, 3-30 people, before PMF)
[B] 1-10 Early Scaling (Series A-B, 30-150 people, PMF validated)
[C] 10-100 Expansion (Series C to pre-IPO, 150-1500 people, multiple business lines in parallel)
[D] 100+ Mature Stage (Public companies/big tech, 1500+ people, high specialization)
```

If the user selects spanning two stages (e.g., "we're transitioning from Series B to C"), write the profile **tilted toward the more mature end** — because organization stage transitions are "capability provisioning precedes organizational scale."

---

## Specific Impact of Stage on the Four Documents

### On the 01 Responsibilities Document

- **Strategy Layer**: 0-1 stage focuses more on "helping define company-level key hypotheses"; 100+ stage focuses more on "optimizing local metrics under existing strategy"
- **Execution Layer**: 0-1 stage has more and more diverse entries (full-stack); 100+ stage has fewer and deeper entries (vertical specialization)
- **Organization Layer**: 0-1 stage barely involves "leading people"; 100+ stage is one of the core responsibilities

### On the 02 Competency Document

- **Craft Competencies**: 0-1 stage has wide coverage but shallow depth; 100+ stage has narrow coverage but extreme depth
- **Collaboration Competencies**: 0-1 stage emphasizes "direct communication + fast alignment"; 100+ stage emphasizes "cross-organizational influence + managing up"

### On the 03 Knowledge Document

- **Infrastructure Knowledge**: 0-1 stage must cover infrastructure setup; 100+ stage only needs to cover infrastructure usage
- **Cases & Exemplars**: Referenced company cases must match the target stage (early teams compare with Airbnb's early experimental culture, not Google's current experiment platform)

### On the 04 Scenarios Document

- **Scenario Tension**: 0-1 stage tension mostly from "resource scarcity + time pressure"; 100+ stage tension mostly from "precision requirements + cross-organizational dynamics"
- **Decision Space in Scenarios**: 0-1 stage has large decision space (many undefined variables); 100+ stage has small decision space (most parameters are locked)

---

## Common Errors

**Error 1: Default to writing 100+ stage profile**
Because online JDs and leading company materials are dominated by big tech, without clarifying the stage, the Agent will automatically tilt toward big tech profiles. This causes the profile to be "all correct in principle but completely disconnected from reality" when used by early teams.

**Error 2: Afraid to write an early-stage profile, worried it's "not professional enough"**
An early-stage Staff-level data analyst expert is still Staff-level — just that the professionalism manifests as "making rigorous judgments under extreme resource scarcity," not "using complex Bayesian models." Don't equate "professional" with "sophisticated."

**Error 3: Mixing two stages**
First half of a profile written in early stage style, second half in mature stage — this is the worst case; the Agent will experience cognitive conflict. Choose one stage and write it completely.

---

## When to Generate "Cross-Stage Profiles"

In rare cases, users may want "the same role profile reusable across stages." In this case, you should **refuse this request** and instead recommend generating multiple stage-specific profiles (e.g., `data-analyst-early` and `data-analyst-mature`), differentiating via the scenario document dimension.

Forcibly writing a cross-stage generic profile will make the profile fuzzy, abstract, and lose sharpness; ultimately the Agent won't perform well for teams at any stage.
