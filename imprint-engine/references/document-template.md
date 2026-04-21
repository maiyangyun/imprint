# Templates and Writing Specifications for the Four Documents

This file is the execution manual for Stages 1-3 of `SKILL.md`. It specifies the hierarchical structure, entry granularity, writing tone, length baseline, and quality red lines for the four documents 01/02/03/04. **Before generating each document, read the corresponding section first — don't write from impression.**

---

## General Rules: Common Specifications for the Four Documents

**1. YAML/Metadata Header** (every document starts with this):

```markdown
# <Role Name> | <Doc Number-Doc Name>

> **Scope**: <Industry/Track>, <Organization Stage: 0-1 Exploration / 1-10 Early Scaling / 10-100 Expansion / 100+ Mature>
> **Target Level**: <Staff / Principal / Director>, corresponding to <Google L6-L7 / Meta IC6-IC7 / ByteDance 3-2 etc.>
> **Structure Mode**: <Strict Six-Layer / Path C Main-Axis + Combat Dimensions>
> **De-Management Treatment**: <Yes/No>
> **Document Version**: v1.0 | Generation Date: <YYYY-MM-DD>
> **Related Documents**: 01-Responsibilities / 02-Competencies / 03-Knowledge / 04-Scenarios
```

**Key discipline for the metadata header**: The organization stage must be explicitly labeled (not "internet company" but "internet company · 100+ mature stage"), because the same role's profile content can differ by 40-60% across stages. See `organization-stage-classification.md`.

**2. Length Baseline and Inverse-Pyramid Entry Count Ratios** (reference the existing docs for product expert, growth expert, data analyst expert):

| Document | Entries | Paragraph per Entry | Total Word Count |
|---|---|---|---|
| 01 Responsibilities | **18-28 entries** | 3-6 sentences + 1-2 sentence Staff level criteria | 4000-7000 words |
| 02 Competencies | **1 : 1.0~1.3 ratio to 01** (about 18-36 entries) | 4-8 sentences | 5000-9000 words |
| 03 Knowledge | **1 : 1.2~1.5 ratio to 01** (about 22-42 entries) | 4-10 sentences | 6000-11000 words |
| 04 Scenarios | 18-22 scenarios | Six-segment (optional seventh) | 10000-16000 words |

**Inverse Pyramid Principle**: 03 Knowledge is the thickest (one knowledge item can support multiple competencies), 02 Competencies next (one competency can support multiple responsibilities), 01 Responsibilities is the thinnest (the outline). **Common errors violating this ratio**: Competency Explosion (26:60:80, dicing responsibilities too small), One-to-One Mapping (26:26:26, losing the shared base), Knowledge-Thin (26:30:20, competencies without underlying support). When exceeding the ratio ranges, either adjust granularity or explain in the retrospective why this role needs to deviate.

**3. Unified Entry Numbering Rules**:
- Layer/dimension → uppercase Arabic or Roman numerals (一、二、三 or I、II、III)
- Entries → three-level numbering (1.1 / 1.2 / 1.3...)
- **No skipping numbers**. After each document is complete, check numbering continuity with `grep "^### " <file>`.

**4. Tone Specification**:
- Use Chinese; provide English originals for professional terms on first occurrence (e.g., "产品市场契合度（Product-Market Fit, PMF）")
- Use third person to describe "this expert" or imperative mood to describe the expert's behavior
- **Prohibit** direct instructions to the Agent like "you should," "you need to" — the profile is "a portrayal of the role," not "operational commands for the Agent"

---

## 01-Role Responsibility Definition Template

**Core question to answer**: What does this role "do and be accountable for" within the organization?

### Hierarchical Structure

**Strict Six-Layer Mode** (for single-discipline roles):

```
一、Strategy Layer (Strategy)
  - Focuses on "why" and "where we're going," typically 3-5 entries
二、Tactics Layer (Tactics)
  - Focuses on "how to plan, prioritize, and trade off," typically 3-5 entries
三、Execution Layer (Execution)
  - Focuses on "how to deliver things and ensure quality," typically 4-6 entries
四、Craft Depth Layer (Craft Depth)
  - Focuses on "this role's unique craftsmanship," typically 3-5 entries
五、Organization Layer (Organization)
  - Focuses on "how to collaborate, enable others, build mechanisms," typically 3-5 entries
六、Self-Evolution Layer (Self-Evolution)
  - Focuses on "how to keep growing, pave the way for the next generation," typically 2-4 entries
```

**Sub-Framework Usage Allowed**: When a layer (especially the Execution layer) has 5+ entries, use a natural classification method within the role's domain to create sub-hierarchies. For example, the data analysis expert's Execution layer can introduce DoorDash's 3C sub-framework (Data Creation / Curation / Consumption), dividing 6 execution-layer responsibilities into three groups: "data creation - data governance - data consumption." **Sub-frameworks must come from existing methodologies within the role's domain, and must not be self-invented** — the goal is to provide the Agent with a finer-grained index when calling execution-layer responsibilities, not to appear structurally elegant. See `../../profiles/data-analyst/01-岗位职责定义.md` third layer for detailed example.

**De-Management Treatment**: If this profile is an IC profile (de-managed), the fifth Organization layer and sixth Self-Evolution layer content must be transformed from "authority-driven" to "influence-driven" — e.g., don't write "manage cross-functional teams" but rather "influence cross-functional decision direction through data insights." See `de-management-persona-guide.md` for detailed rewrite rules and comparison tables.

**Path C Composite Role Mode** (for cross-domain roles like growth/operations/monetization):

```
一、Core Spine Responsibilities (Core Spine)
  - This composite role's "combat theme," 4-6 entries
二、Combat Dimension 1: <Strategy/Data/Experiment type>
  - 3-5 entries
三、Combat Dimension 2: <Market/Acquisition/Channel type>
  - 3-5 entries
四、Combat Dimension 3: <Content/Brand/Narrative type>
  - 3-5 entries
五、Combat Dimension 4: <Product-Led/Retention/Monetization type>
  - 3-5 entries
六、Cross-Dimensional Responsibilities (Cross-Dimensional)
  - Coordinating, cultural, and organizational cross-cutting responsibilities, 3-5 entries
```

### Paragraph Structure for a Single Responsibility

Each responsibility should be written as **paragraph + Staff level criteria**, not "title + half sentence." Recommended structure:

```markdown
### 1.1 <Responsibility name, verb-object structure or noun phrase>

<Opening sentence sets the theme>. <Expanded description: in what situations, facing what problems, needing to make what judgments and produce what outputs>. <Why this responsibility is critical for this role — organizational value or professional value>. <Optional: reference a leading company's specific practice [E07], or a classic methodology as a reference>. <Optional: list 2-3 typical tasks/deliverables under this responsibility>.

**Staff Level Criteria**: <1-2 sentences stating the core difference between Senior and Staff on this responsibility. Let 01 itself carry the level anchoring, rather than pushing all level definitions to 02's "junior vs. expert comparison.">
```

**Key Discipline**: Every responsibility must have Staff level criteria; otherwise it will be flagged in the final checklist. Staff level criteria is 01's "self-ruler" — it distinguishes the junior line of "can vs. cannot" from the Staff line of "can do well vs. can do right," avoiding deferring all level differences to 02.

**Example (Product Expert 1.1)**:

> **1.1 Define product long-term vision and North Star metric**
>
> A product expert must answer "what should this product look like in five years, and which core metric shows whether we're on the right path." This isn't about writing a vision PPT; it's about finding the intersection of market, user, and technology where a narrative is "big enough, real enough, and winnable by us," then compressing it into a trackable, decomposable North Star metric that the team looks at every day. Amazon's "Working Backwards" [E03] and Airbnb's early "Belong Anywhere" [E11] are exemplars of this responsibility. Typical deliverables include: product vision narrative, 5-year strategic milestones, definition and decomposition tree of the North Star metric.
>
> **Staff Level Criteria**: Senior can produce a vision document based on existing direction; Staff can identify hidden assumptions in the existing vision and make trade-offs with sunk-cost abandonment among multiple competing "all seemingly correct" directions.

### Quality Checks

- [ ] Every responsibility can independently explain "what to do, why it matters, how to land it"
- [ ] **Every responsibility has Staff level criteria (1-2 sentences)**
- [ ] No duplication between entries (each responsibility is a unique activity scope)
- [ ] No empty phrases like "good XX ability," "has XX vision"
- [ ] At least 30% of entries reference industry leading practices or classic frameworks, using the unified `[E07]` format pointing to the evidence library
- [ ] Entry count 18-28
- [ ] Composite roles or IC profiles have layers 5-6 rewritten per `de-management-persona-guide.md`

---

## 02-Competency Requirement Definition Template

**Core question to answer**: To fulfill 01's responsibilities, what "transferable professional competencies" must one possess?

**Key distinction**: Competency ≠ Knowledge. A competency is "the skill of making high-quality judgments/outputs in context"; knowledge is the concepts, frameworks, and data supporting competencies. Competencies are typically expressed as verb phrases; knowledge is typically expressed as noun concepts.

### Hierarchical Structure

Competency documents typically divide into four to five categories:

```
一、Thinking Competencies (Thinking)
  - Underlying thinking competencies: judgment, reasoning, trade-offs, systems thinking
二、Craft Competencies (Craft)
  - The most unique "craft" of this role, distinguishing it from other roles
三、Data & Quant Competencies (Data & Quant)
  - Using data for decisions, experiments, and predictions
四、Collaboration & Organization Competencies (Collaboration & Org)
  - Enabling others to also produce high-quality outputs
五、Meta Competencies (Meta, optional)
  - Learning, reflection, self-calibration
```

### Paragraph Structure for a Single Competency

```markdown
### 2.1 <Competency name, verb phrase>

<One sentence defining this competency>. <Expanded description: in what situation this competency is invoked, what the input is, what the output is, what "done well" looks like>. <Where is the core difference between expert-level and junior-level>. <Optional: typical training path or verification method>.

**→ Corresponding Responsibilities**: 1.2, 3.4
**→ Underlying Knowledge**: 3.7, 3.12
```

**Mandatory Discipline — Reverse Mapping While Writing**: When writing each competency, **the end of the paragraph must include "corresponding responsibilities" and "underlying knowledge" reverse mapping annotations on the spot**. It's not allowed to "finish 02 and then come back to fill in mappings" — this almost always results in: you'll discover some competencies don't have real responsibility anchors (orphans), but because the paragraph is already written, you'll tend to "force a responsibility in," which reverse-pollutes 01. The correct approach: **before writing each competency, mentally identify which responsibilities in 01 it corresponds to** — if you can't identify any, don't write this competency.

**Example (Growth Expert 2.3)**:

> **2.3 Design minimum viable experiments to rapidly falsify hypotheses**
>
> Decompose a growth hypothesis into "input-processing-output" three segments, designing an experiment apparatus with the lowest cost and fastest path to a "valid/invalid" conclusion. The hallmark of expert level: before writing the experiment plan, first write "if this hypothesis is wrong, what signals would I see" — i.e., define falsification conditions first, then design treatment groups. Reforge's "Experiment Design" course and Sean Ellis's High Tempo Testing framework are the methodological sources for this competency. Underlying knowledge support: statistical significance and power (see 03 doc 3.12), experiment design principles (3.13), causal inference (3.14). Junior vs. expert difference: juniors will directly run A/B tests and focus on result significance; experts will first ask "Is the sample size enough? Is the runtime long enough? Is there seasonal contamination?"
```

### Quality Checks

- [ ] Every competency has a verb ("design," "judge," "weigh," "decompose," "communicate," etc.)
- [ ] **Every competency has "→ Corresponding Responsibilities" and "→ Underlying Knowledge" reverse mapping lines at paragraph end**
- [ ] Every competency explicitly points to 1-3 knowledge entries in the 03 document
- [ ] Every competency captures the "expert vs. junior" difference
- [ ] Competency : Responsibility entry count ratio falls in **1.0~1.3 : 1** (i.e., 02 slightly more than 01, but not exceeding 1.3x)

---

## 03-Knowledge System Definition Template

**Core question to answer**: What underlying "concepts, methodologies, models, frameworks, data" support 02's competencies?

### Hierarchical Structure

The knowledge system is recommended to follow a four-layer structure from abstract to concrete:

```
一、Foundations & Thinking Models (Foundations)
  - Cross-disciplinary concepts borrowed from other fields, the role's "worldview-level" concepts
  - E.g.: First Principles, Systems Thinking, Munger's Latticework, Compounding Effect, Antifragile
二、Industry Core Frameworks & Methodologies (Industry Frameworks)
  - Classic frameworks recognized within the role's industry
  - E.g. (Product): JTBD, Kano Model, HEART Framework
  - E.g. (Growth): AARRR, Growth Loops, PLG Flywheel, Four Fits
三、Tools & Metrics (Tools & Metrics)
  - Specific tools, metrics, templates used daily by this role
  - E.g.: North Star Metric, Retention Curve, Cohort Analysis
四、Case Library (Case Library)
  - Classic cases, counter-examples, and industry exemplars in this role's history
  - E.g.: Dropbox referral system, Slack early growth, Netflix personalized recommendations
```

### Paragraph Structure for a Single Knowledge Item

```markdown
### 3.1 <Knowledge/Concept/Framework Name> (English original name)

<One paragraph definition and explanation>. <The origin, proposer, or representative company of this concept/framework [E07]>. <What problem it solves, in what context it applies>. <Common misuse or anti-patterns>. <Further reading or classic source>.

**→ Supports Competencies**: 2.3, 2.5
```

**Mandatory Discipline — Reverse Mapping While Writing**: When writing each knowledge item, **the end of the paragraph must include "→ Supports Competencies" annotation on the spot**, pointing to at least 1 competency in 02. If a knowledge item can't find a corresponding supported competency, it doesn't belong to this role's "working memory" — it may be a concept from an adjacent domain and should be deleted rather than force-inserted.

**Example (Product Expert 3.7)**:

> **3.7 Jobs-To-Be-Done (JTBD, Theory of Jobs to be Done)**
>
> JTBD is a user research and product definition framework whose core tenet is "users don't buy products, they hire products to do a certain job." Proposed by Clayton Christensen and developed by Bob Moesta and Alan Klement. JTBD's strength is helping product teams break out of the "features/specs" perspective and return to users' real motivations, contexts, and emotions — especially suitable for market analysis, opportunity identification, and differentiated positioning. Common misuse: equating JTBD with "user stories" or "use cases"; ignoring the context and emotion dimensions, focusing only on functional jobs. Classic source: *Competing Against Luck* (Christensen, 2016), Bob Moesta's Switch Interview method.
```

### Quality Checks

- [ ] Four-layer structure complete, 5-12 entries per layer
- [ ] At least 50% of knowledge entries reference specific people/books/companies/papers, using the unified `[E07]` format pointing to the evidence library
- [ ] **Every knowledge item has "→ Supports Competencies" reverse mapping at paragraph end**
- [ ] Every knowledge item can be found to support at least one competency in 02
- [ ] Knowledge : Responsibility entry count ratio falls in **1.2~1.5 : 1** (i.e., 03 is the thickest layer of the inverse pyramid)
- [ ] Not written as "encyclopedia entries" — the focus is on "how to use this in this role," not generic definitions

---

## 04-Typical Work Scenarios and Judgment Examples Template

See `scenario-generation-guide.md`. Only the overall structure is listed here:

```
# <Role Name> | 04-Typical Work Scenarios and Judgment Examples

> Scope / Target Level / Related Notes

## User Guide
<How to use this scenario library for Agent self-training and reader learning>

## Section 一、<Strategy Layer or Core Spine> Related Scenarios (4 scenarios)
  Scenario 1.1 ... (six-segment)
  Scenario 1.2 ...
  Scenario 1.3 ...
  Scenario 1.4 ...

## Section 二、<Tactics Layer> Related Scenarios (3 scenarios)
  ...

## Section 三-六、<Other Layers> Related Scenarios

## Appendix A: Scenario-Responsibility-Competency-Knowledge Four-Dimensional Mapping Table
## Appendix B: Scenario Selection Logic Description
```

---

## Cross-Document Reference Writing Discipline (Mandatory — Violations Require Rewriting in the Corresponding Stage)

Three foundational documents must establish explicit reference relationships, allowing the Agent to freely navigate between "responsibility-competency-knowledge" when reading. **This is not a "suggestion" nor "after-the-fact patching" — it's a hard discipline done while writing**.

**Mandatory Reference Specification**:

| Document | Paragraph End Must Include | Check Node |
|---|---|---|
| 01 Responsibilities | (No reverse mapping, but each has Staff level criteria) | After writing each entry, immediately self-check "can 02 find at least one competency to carry it" |
| 02 Competencies | `→ Corresponding Responsibilities: 1.2, 3.4` and `→ Underlying Knowledge: 3.7, 3.12` | After writing each entry, add mapping immediately; don't move to the next one |
| 03 Knowledge | `→ Supports Competencies: 2.3, 2.5` | After writing each entry, add mapping immediately; if no mapping found, delete this entry |
| 04 Scenarios | `→ Corresponding: Responsibility 1.1 / Competency 2.3, 2.8 / Knowledge 3.7, 3.14` (optional `Related Scenarios: 3.4`) | After writing each scenario, add mapping immediately |

**Why "Write While Mapping" Is Mandatory Rather Than "Write Then Patch"**:

If mapping is added uniformly at Stage 4, two types of problems are likely: (a) some competencies/knowledge won't have real anchor points (orphans), but because the paragraph is already written, the author will tend to "find a responsibility to force in," reverse-polluting 01; (b) bulk-adding mappings puts the author into "reconciliation mode" rather than "creation mode," draining attention on format rather than content quality. **So this discipline allows no compromise** — once it's found a document wasn't write-mapped, problematic entries must be rewritten in the corresponding stage.

This explicit referencing is both the input to Stage 4 cross-validation and the key index for the Agent's "self-recall" when being created.

---

## Common Counter-Examples (Writing to Avoid)

**Counter-example 1: Empty platitudes**
> ❌ "Possesses excellent strategic thinking and a holistic view, able to view problems from a higher dimension."
> ✅ "When trading off between multiple competing directions strategically, able to explicitly write the 'what not to do' list and explain the opportunity cost and abandonment reason for each 'not do'."

**Counter-example 2: Managerial tone (composite roles)**
> ❌ "As the growth lead, coordinates and manages all work of the growth team."
> ✅ "Able to independently operate a complete growth engine from acquisition to retention, can personally write ad copy and run experiments, and also build a 3-5 person combat team at scale."

**Counter-example 3: Knowledge as encyclopedia entries**
> ❌ "AARRR is the acronym for Acquisition, Activation, Retention, Revenue, Referral, proposed by Dave McClure."
> ✅ "AARRR is Dave McClure's pirate metrics framework for early-stage startups. Most useful from seed to Series A, helping teams build 'funnel-style' growth perspectives; but after PMF, entering scale retention, AARRR misleads teams into over-focusing on the top of the funnel and ignoring Growth Loops compounding mechanisms — at that point, switch to Reforge's Loops framework."

**Counter-example 4: Entries too granular**
> ❌ Breaking "writing a PRD" into 20 sub-responsibilities ("write title," "write background," "write user stories"...)
> ✅ One responsibility covers "completely translating requirements into executable specifications," with sub-tasks described within the paragraph.

---

## Workflow for Using This Template

1. Read the corresponding 01/02/03/04 section in this document
2. Browse the same-numbered documents in `../../profiles/product-manager/`, `../../profiles/growth-expert/`, `../../profiles/data-analyst/` as length and tone baselines
3. First list the outline by hierarchy (entry titles only), let the user review
4. After outline confirmation, write paragraphs one by one, **adding reverse mapping immediately after each entry; no deferrals allowed**
5. After each document is done, self-check using the "Quality Check" list
6. Proceed to the next document, repeatedly referring back to