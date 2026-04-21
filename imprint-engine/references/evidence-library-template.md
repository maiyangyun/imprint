# Evidence Library Template: Structure and Reference Rules for `_evidence.md`

This file is a supplementary execution manual for Stage 0.5 of `SKILL.md`. It specifies the fields, numbering rules, reference format used in 01/02/03/04, and the Stage 4 "evidence usage heatmap" check method for the `profiles/<role-name>/_evidence.md` evidence library file.

---

## Why a Standalone Evidence Library Is Needed

In the old methodology, Stage 0.5 research outputs were only presented as "research briefs" in conversation, **not persisted as files**. This caused side effects:

- When writing 01/02/03/04, reference formats were inconsistent — some wrote "refer to Reforge course," others wrote "a former Airbnb data scientist," and some didn't reference at all
- Readers (including the Agent itself and users) couldn't trace references back to original research
- There was no way to quantify "how many times a given piece of evidence was actually used in the profile" — research efficiency was blind
- The same evidence was described inconsistently across documents, resembling an "averaged collage from multiple sources"

**A standalone evidence library solves these four problems**: unified numbering + unified reference format + traceability + quantifiability.

---

## Evidence Library File Location and Naming

Every profile must have a dedicated evidence library file:

```
profiles/<role-name>/_evidence.md
```

The filename starts with an underscore, indicating it's an "attachment/metadata for this profile" rather than profile body text.

---

## Evidence Library Structure

```markdown
# <Role Chinese Name> | Evidence Library (_evidence.md)

> **Profile**: <Role Chinese Name / English Name>
> **Research Date**: <YYYY-MM-DD>
> **Total Evidence Count**: <N>
> **Primary Anchor**: <E0X, primary anchor evidence number>
> **Secondary Counterpoint**: <E0Y, secondary counterpoint evidence number>
> **Heatmap Last Updated**: <YYYY-MM-DD>

---

## Evidence List

### E01 <Evidence Title>

- **Source Type**: Real JD / Practitioner Account / Course / Industry Case / Methodology / Academic Paper
- **Source Link**: <URL or "No link, from XX book page YY">
- **Author/Organization**: <Person or company>
- **Research Date**: <YYYY-MM-DD>
- **Key Summary**: <A 2-5 sentence paragraph restating the core content of this evidence in your own words. Don't copy the original text directly; capture "the point that's useful for this profile.">
- **Impact on Profile**: <Specifically explain which part of 01/02/03/04 it shaped. E.g.: Influenced the 3C sub-framework division in 01's third layer / Provided the "write falsification conditions first" expert judgment basis for 02-2.4 competency / Became the situational prototype for 04 scenario 2.1>
- **Reference Count** (updated after Stage 4): 01×_ / 02×_ / 03×_ / 04×_ = Total _ times
- **Primary Anchor / Secondary Counterpoint**: ✅ Primary Anchor / ✅ Secondary Counterpoint / —

---

### E02 <Evidence Title>

(Same format as above)

---

### ...(E03, E04, E05... through EN)
```

---

## Numbering Rules

- Evidence numbers start from **E01**, incrementing sequentially: E01, E02, E03, ..., E10, E11, ..., EN
- All evidence uses **two-digit numbers** (E01 not E1) — so `[E07]` and `[E17]` visually align in subsequent references
- Once assigned, numbers never change; if evidence is deleted later, **keep the number as a placeholder and mark the entry as "retired"** — explained below
- Number reuse is not allowed: deleted numbers are left vacant; new evidence uses the next unused number

**Why keep number placeholders when deleting evidence**:

Suppose E07 is "Google Good Data Analysis Guide," and it's later found to contribute little to the profile and needs deletion. If you simply delete it and rename E08 to E07, then all `[E07]` references in 01/02/03/04 would point to the wrong evidence. The correct approach:

```markdown
### E07 ~~Google Good Data Analysis Guide~~ (Retired)

- **Retirement Reason**: Stage 4 heatmap showed 0 reference count; upon review, this evidence's contribution to the profile is already covered by E03 and E12, with no independent incremental value
- **Retirement Date**: <YYYY-MM-DD>
```

This preserves existing references without breaking them and maintains an audit trail of the decision.

---

## Reference Format (How to Use in 01/02/03/04)

**Use the unified `[E07]` format**, embedded inline within paragraph text:

> Amazon's "Working Backwards" [E03] and Airbnb's early "Belong Anywhere" [E11] are exemplars of this responsibility.

Don't use scattered references like "[Amazon, Working Backwards]" or footnote numbers like `[1]` — neither facilitates cross-document evidence heatmap statistics.

**Recommended Reference Placement**:

- 01 Responsibilities document: Primarily appears in the sentence about "why this responsibility matters for this role" or "citing leading company practices"
- 02 Competencies document: Primarily appears in the sentence about "expert vs. junior level differences" or "typical training paths"
- 03 Knowledge document: Primarily appears in the sentence about "who proposed this concept / classic source"
- 04 Scenarios document: Primarily appears in reasoning logic paragraphs (citing an expert's original words or methodology) and common pitfalls paragraphs (citing a famous failure case)

---

## Primary Anchor + Secondary Counterpoint

The Stage 0.5 research brief already requires declaring a "primary anchor + at most one secondary counterpoint" — the evidence library must **explicitly mark** these two positions.

**Example (Data Analyst profile)**:

```markdown
> **Primary Anchor**: E03 (DoorDash Data Team Triangle Architecture / Jessica Lachs interview on Lenny's Podcast)
> **Secondary Counterpoint**: E11 (Airbnb Data Science Team Dual Structure / Chetan Sharma's internal methodology article)
```

These two evidence items should be referenced repeatedly throughout the entire profile — ideally, their reference counts should reach **5+ times**, becoming "core anchors" on the heatmap (see the Evidence Usage Heatmap section in `cross-validation.md`).

**Criteria**: The primary anchor provides the "complete picture of how this role works at a real company"; the secondary counterpoint provides the "tension of how the same role would differ under a different organizational form/philosophy." Combined, they give the profile "internal dialectical quality" rather than being an averaged collage from multiple sources.

---

## Minimum Research Scale

Before each profile generation, the evidence library should contain at least **10 evidence items**, covering ≥ 2 per dimension across five dimensions:

1. Real JDs (≥ 2)
2. Practitioner accounts (≥ 2)
3. Courses/training systems (≥ 2)
4. Industry cases (≥ 2)
5. Methodologies/frameworks (≥ 2)

The ideal range is **15-25 items**. Exceeding 30 indicates over-research and should be trimmed to "only those that truly shaped the profile."

---

## Stage 4 Evidence Usage Heatmap

See the "Evidence Library Usage Heatmap" section in `cross-validation.md`. Core criteria:

- 🟢 Core anchor (referenced ≥ 3 times): At least 3 items
- 🟡 Supporting evidence (referenced 1-2 times): Most evidence falls in this range
- 🔴 Unused (referenced 0 times): **Must be cleared to zero** — either add references in the profile, or retire from the evidence library (keep number placeholder + note retirement reason)

---

## Long-Term Value of the Evidence Library

After a profile is completed, the evidence library is not a "one-time research draft" but the profile's **long-term reference material**:

- When iterating the profile in the future (quarterly reviews, new scenario expansions), the evidence library helps determine "what new evidence needs to be supplemented"
- When creating adjacent role profiles (e.g., already have data analyst, now creating data engineer), the evidence library can be partially reused
- When users question a specific item in the profile, they can trace back to the original evidence via `[E07]`
- Auditing profile update frequency: an evidence library that hasn't been updated in a long time means the profile itself has fallen behind the industry

Therefore, the evidence library should be saved alongside 01/02/03/04 in the `profiles/<role-name>/` directory as part of the profile deliverable package.

---

## Reference Implementation

- `../../profiles/data-analyst/_evidence.md` (to be established) — the data analyst's evidence library, intended as a template
