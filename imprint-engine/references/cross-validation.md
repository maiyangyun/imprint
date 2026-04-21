# Cross-Validation: The Quality Discipline of "Interlocking" Three Documents

This file is the execution manual for Stage 4 of `SKILL.md`.

## Key Positioning Shift: From "Finding Gaps" to "Confirming No Gaps"

In the old methodology, Stage 4 was the heaviest step in the entire process — because 01/02/03 were typically written independently and then reconciled afterward, leaving gaps everywhere. The new methodology moves "reverse mapping" forward into the writing principles of Stages 1-3 (**map as you write**, see the "Cross-Document Reference Writing Discipline" in `document-template.md`), so theoretically every competency/knowledge item already has an anchor point when written.

Therefore **Stage 4 is no longer a "mine-sweeping stage" but a "closed-loop confirmation stage"**:
- If the write-as-you-map discipline was properly executed, Stage 4 should complete within 30 minutes, producing a clean mapping table and an evidence usage heatmap
- If Stage 4 discovers gaps or orphans — that's not Stage 4's output, but a **process alarm**: it means the write-as-you-map discipline in Stages 1-3 wasn't properly executed, and the corresponding entries need to go back to Stage 2/3 for rewriting, not be patched in place at Stage 4

Remember: entries patched at Stage 4 are typically lower quality (written just to align), and will pollute the document's internal narrative flow. **The fix point is always at the earliest stage where it first appeared**.

---

## Why Cross-Validation Is Still Needed

If the three foundational documents are written independently, three typical misalignments will emerge:

**Misalignment 1: Responsibility requires but competency doesn't support**
01 says the expert should "define long-term vision," but 02 has no competency related to "long-term narrative construction" — the Agent "knows what to do but not how to do it."

**Misalignment 2: Competency defined but knowledge doesn't support**
02 says the expert should "design significance experiments," but 03 has no related knowledge on statistical significance, power analysis, sampling distributions — the Agent's competency is "floating in mid-air."

**Misalignment 3: Deep knowledge but no calling scenario**
03 lists 20 advanced frameworks, but only 5 can find corresponding entries in 01/02 — these "orphan knowledge" items consume cognitive bandwidth without producing value.

**Every time cross-validation is skipped, it leaves a fault line in the Agent's cognition**. The Agent will manifest this in real tasks as "talks a great game but can't execute" or "knows many frameworks but doesn't know when to use them."

---

## Three Tasks of Stage 4

Under the new methodology, Stage 4 includes three tasks, all executed with a **"formal closed-loop confirmation"** mindset:

1. **Three-layer mapping closed-loop confirmation** (forward + reverse bidirectional scan)
2. **Evidence library usage heatmap check** (new addition)
3. **If gaps or orphans are found, write back to Stage 2/3 for rewriting** (not patching in place)

---

## Task One: Bidirectional Scan of Three-Layer Mapping

### Direction 1: Forward Mapping Check (01 → 02 → 03)

**Purpose**: Confirm every responsibility has competency support, and every competency has knowledge support.

**Steps**:

1. **01 → 02 Mapping**:
   - Read each responsibility in 01 one by one
   - Ask: "To fulfill this responsibility, what competencies are needed? Can these competencies be found in 02?"
   - Record the correspondence in the mapping table. If not found, mark as a "**responsibility missing competency**" gap.

2. **02 → 03 Mapping**:
   - Read each competency in 02 one by one
   - Ask: "What underlying methodology/concept/framework supports this competency? Can it be found in 03?"
   - Record in the mapping table. Mark unfound items as "**competency missing knowledge**" gaps.

**Forward Mapping Table Format**:

| Responsibility # | Responsibility Summary | Mapped Competency # | Underlying Knowledge # | Status |
|---|---|---|---|---|
| 1.1 | Define long-term vision | 2.1, 2.6 | 3.1, 3.5 | ✅ |
| 1.2 | Strategic trade-offs | 2.2 | 3.3 | ⚠️ Missing ROI trade-off competency |
| 2.3 | OKR decomposition | ? | ? | ❌ Competency missing |

### Direction 2: Reverse Orphan Check (03 → 02 → 01)

**Purpose**: Find uncalled "orphan entries" — either the profile is incomplete, or irrelevant content was included.

**Steps**:

1. **03 → 02 Reverse Check**:
   - Read each knowledge entry in 03 one by one
   - Ask: "Which competency in 02 calls upon this knowledge?"
   - Mark unfound items as "**knowledge orphan**."

2. **02 → 01 Reverse Check**:
   - Read each competency in 02 one by one
   - Ask: "Which responsibility in 01 carries this competency?"
   - Mark unfound items as "**competency orphan**."

**Reverse Orphan Table Format**:

| Orphan # | Orphan Type | Content | Resolution |
|---|---|---|---|
| 3.18 | Knowledge orphan | Game theory fundamentals | ⚠️ Evaluate whether to add corresponding responsibility |
| 2.15 | Competency orphan | Public speaking ability | ❌ Delete (not relevant to this role's core) |

---

## Task Two: Evidence Library Usage Heatmap

Stage 0.5 research produces the evidence library `_evidence.md`, with unified numbering E01-EN. During Stages 1-3 writing, each responsibility/competency/knowledge entry must use `[E07]` format to reference specific evidence library numbers when citing leading company practices or classic frameworks.

The **usage heatmap** tallies "how many times each E01-EN evidence item is referenced across 01/02/03/04," answering two key questions:

1. **Is my profile truly "grounded in research evidence"?** — Or did some content drift away from evidence, sliding back to the Agent's prior impressions?
2. **Was the Stage 0.5 research efficient?** — Which evidence items weren't actually used?

### Heatmap Template

| Evidence # | Evidence Title | 01 References | 02 References | 03 References | 04 References | Total | Health |
|---|---|---|---|---|---|---|---|
| E01 | DoorDash Data Team Triangle Architecture | 2 | 1 | 0 | 3 | **6** | 🟢 Core anchor |
| E07 | Reforge Experiment Design Course | 0 | 1 | 1 | 1 | **3** | 🟢 Core anchor |
| E12 | Airbnb Data Science Dual Structure | 1 | 0 | 0 | 1 | **2** | 🟡 Supporting evidence |
| E15 | Google "Good Data Analysis" Guide | 0 | 0 | 1 | 0 | **1** | 🟡 Supporting evidence |
| E19 | Spotify Data Analyst Job Posting | 0 | 0 | 0 | 0 | **0** | 🔴 Unused |

**Health Interpretation**:

- 🟢 **Core anchor** (referenced ≥ 3 times): An evidence item called upon repeatedly across multiple documents, indicating it's a "pillar" of the profile. Ideally, **primary anchor + secondary counterpoint evidence should have 3-5 items reaching core anchor level**.
- 🟡 **Supporting evidence** (referenced 1-2 times): Healthy corroboration. Most evidence will fall in this range.
- 🔴 **Unused** (referenced 0 times): ⚠️ Alert. Either this evidence isn't actually important (remove from evidence library and note "deemed not applicable after research" in the header), or it was overlooked (find an appropriate place in the profile to reference it). **No unused evidence is allowed to sit in the evidence library** — this would make it impossible for future reviewers to determine which evidence truly shaped the profile.

### Heatmap Generation Method

A simple bash command suffices:

```bash
# Run in the profiles/<role-name>/ directory
for n in $(seq -f "E%02g" 1 30); do
  count=$(grep -c "\[$n\]" 01-*.md 02-*.md 03-*.md 04-*.md)
  echo "$n: $count"
done
```

Or use more granular per-file statistics and manually fill in the heatmap template above.

### Heatmap Criteria

**A passing heatmap must satisfy**:

- [ ] 🔴 Number of unused evidence items is **0**
- [ ] 🟢 At least 3 core anchor evidence items
- [ ] 04 scenario document references at least 50% of evidence library items — because scenarios have the "highest evidence reuse rate"
- [ ] The primary anchor's representative evidence (e.g., DoorDash/Jessica Lachs related evidence) is referenced at least 2 times in 01

When criteria aren't met, go back to the corresponding document to add references, or reasonably retire evidence from the library with stated reasons.

---

## Task Three: Handling Gaps and Orphans

> **Key new principle**: Gaps or orphans discovered at Stage 4 should be **fixed at Stage 2/3, not at Stage 4**. Don't patch entries in place at Stage 4 — entries written this way are almost certainly "written just to align," and paragraph quality will drop a notch.

### Fix Path (Write Back to Source Stage)

**Method A (Recommended): Go back to Stage 2/3 to rewrite corresponding entries**
Fill gaps at the original writing stage:

- If "responsibility missing competency": Go back to Stage 2, re-examine the relevant responsibility in 01, add a competency entry in 02 that carries that responsibility (and do reverse mapping on the spot)
- If "competency missing knowledge": Go back to Stage 3, add a knowledge entry in 03 that supports that competency (and do reverse mapping on the spot)
- If "knowledge orphan": First determine if this knowledge is truly useful; if useful, it means 01/02 missed a responsibility or competency, go back to Stage 1/2 to fill in; if not useful, use Method B

**Method B: Delete the orphan entry**
Confirm the gap or orphan truly doesn't belong to this role, and delete from the source document.

- Knowledge orphans are usually "over-written" — the knowledge system tried to appear comprehensive and included items this role doesn't need
- Competency orphans are usually "generic competencies" — written but lacking role specificity
- In rare cases, responsibilities may also be proven "not belonging to this role" (common in composite roles where some responsibilities better belong to an adjacent role)

### Decision Flow

```
Gap/orphan discovered
   ↓
Ask: Is this gap/orphan critical for this role's Staff/Principal level?
   ↓ Yes                       ↓ No
Method A: Fill in              Method B: Delete
   ↓                            ↓
Update corresponding doc       Update corresponding doc
   ↓                            ↓
Update mapping table           Update mapping table
```

---

## Stage 4 Execution Checklist (30-Minute Closed-Loop Confirmation Version)

Given that the write-as-you-map discipline was properly executed, Stage 4 is a formal closed-loop confirmation, targeting completion within 30 minutes:

- [ ] **Step 1**: Open all four documents 01/02/03/04 + evidence library `_evidence.md`
- [ ] **Step 2**: Forward mapping scan 01 → 02 (each responsibility → competency), confirm all are supported
- [ ] **Step 3**: Forward mapping scan 02 → 03 (each competency → knowledge), confirm all have underlying support
- [ ] **Step 4**: Reverse orphan scan 03 → 02 → 01, confirm no orphans
- [ ] **Step 5**: Generate evidence library usage heatmap, check unused evidence count is 0, core anchors ≥ 3
- [ ] **Step 6**: If any gaps/orphans/unused evidence found — **go back to the corresponding source stage to fix**, not patch in place at Stage 4
- [ ] **Step 7**: After fixes, run Steps 2-5 again to confirm all loops are closed
- [ ] **Step 8**: Produce "Responsibility-Competency-Knowledge Three-Layer Mapping Table" + "Evidence Usage Heatmap" as Stage 6 deliverables

---

## Three-Layer Mapping Table: Deliverable

After cross-validation is complete, a **complete three-layer mapping table** must be produced as part of the Stage 6 deliverables.

**Recommended Format** (Markdown table):

```markdown
## Responsibility-Competency-Knowledge Three-Layer Mapping Table

| Responsibility # | Responsibility Summary | Mapped Competencies | Mapped Knowledge |
|---|---|---|---|
| 1.1 | Define product long-term vision | 2.1, 2.6 | 3.1, 3.5, 3.9 |
| 1.2 | Strategic trade-offs & "what not to do" | 2.2, 2.8 | 3.3, 3.12 |
| 1.3 | North Star metric decomposition | 2.4, 2.11 | 3.7, 3.14 |
| ... | ... | ... | ... |
```

This table serves three purposes:
1. **Validate profile completeness**: Every responsibility/competency/knowledge item can be found in the table
2. **Support Agent self-recall**: When the Agent reads a responsibility, it can follow the table to find the competencies and knowledge to invoke
3. **Support future iterations**: When adding responsibilities or adjusting competencies in the future, cascading impacts can be quickly located

---

## Common Issues and Responses

**Issue 0: Stage 4 discovered 5+ gaps — what to do?**
This isn't Stage 4's problem; it's a signal that the write-as-you-map discipline in Stages 1-3 wasn't properly executed. The correct approach: **pause Stage 4, go back to Stages 2/3 to catch up on the owed reverse mappings** — gaps will naturally surface and get fixed during this process, at much higher quality than patching in place at Stage 4. Then run Stage 4's closed-loop confirmation again.

**Issue 1: Gap fixes keep snowballing — what to do?**
After filling a gap, the new entry may create new downstream requirements (added a competency, then discovered it's missing corresponding knowledge). This is normal — **two to three rounds of iteration will converge**. If it's still snowballing by the fourth round, the original profile's scope itself has problems, and you should go back to Stage 0 to realign role boundaries with the user.

**Issue 2: User doesn't want to delete orphan entries — what to do?**
If the user insists a knowledge/competency item has value but can't find a carrying responsibility, **the most likely truth is that 01 is missing a responsibility**. Don't force-align to an unrelated responsibility; instead go back to 01 and add a genuine responsibility entry.

**Issue 3: Forward mapping and reverse check find contradictions — what to do?**
For example, forward says "responsibility 1.1 missing competency," but reverse finds "competency 2.7 actually corresponds to 1.1." This indicates a **naming or classification issue**, not a real gap — just adjust 2.7's description or classification.

**Issue 4: Must cross-validation be done manually?**
During the generation stage, the Agent can do a preliminary pass, but **the final review must be done jointly with the user**. Because judging "is this entry an orphan or critical" requires role experience, and the Agent is prone to self-confirmation bias.

---

## Cross-Validation Outputs

A complete cross-validation should produce the following five types of deliverables:

1. **Forward mapping table** (responsibility → competency → knowledge)
2. **Reverse orphan list** (knowledge orphans, competency orphans; ideally should be empty)
3. **Evidence library usage heatmap** (reference count for each E01-EN evidence item + health interpretation)
4. **Gap fix log** (if gaps exist, record whether Method A write-back or Method B deletion was used, with rationale for each decision)
5. **Final three-layer mapping table** (complete alignment table after fixes, as a deliverable)

These five deliverables ensure the cross-validation stage itself is auditable and traceable.
