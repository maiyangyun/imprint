# 04 Scenario Document: Generation Guide & Quality Standards

This document is the execution handbook for Stage 5 of `SKILL.md`. Scenario documents are the critical vehicle that elevates an Agent from "can answer questions after reading" to "can take action after reading" — the **final piece** of the entire soul engineering profile.

---

## Why Scenario Documents Are Needed

The three foundational documents (01 Responsibilities, 02 Competencies, 03 Knowledge) address the Agent's **declarative knowledge** — "who I am, what I can do, what I know." But the real value of an expert with 3-5 years of hands-on experience lies in **procedural and situated knowledge**:

- Procedural Knowledge: Action sequences and decision-making processes in specific situations
- Situated Knowledge: Sensitivity to situational nuances — which signals matter, which pitfalls to avoid, which trade-offs are typical

Scenario documents use a **six-section situational sample** format to deconstruct and expose the expert's judgment process, enabling the Agent to transform abstract responsibilities and competencies into concrete behavioral patterns through "read → compare → internalize." This is the application of few-shot learning in soul engineering.

---

## Six-Section Scenario Template

Every scenario must strictly follow the six-section structure below. The order must not be rearranged, and any missing section renders the scenario non-compliant:

### Section 1: Situation

**What to write**: The specific context, constraints, time pressure, and circumstances.

**Key points**:
- Use 150-300 words to set up a scenario **so real you can almost smell it**
- Specify **time** ("the night before the Week 8 standup" rather than "one day")
- Specify **key players** (what the CEO said, the dev lead's stance)
- Specify **data state** (concrete numbers rather than "data declined")
- Specify **decision point** (what is the focal question of this scenario)

**Bad example**:
> ❌ "Team retention data has dropped. Need to analyze the cause and propose a plan."

**Good example**:
> ✅ "Week 8 of Q3. Over the past 6 weeks, W4 retention for new signups dropped from 28% to 19%, while D1 retention held steady at 62%. The CEO expects you to present a diagnosis and action plan at tomorrow's 10 AM OKR review. You have GA event data, Amplitude funnels, three weeks of support tickets (142 total), and a 'possible 7 causes' list the PM wrote last week."

### Section 2: Key Signals

**What to write**: Clues that an expert would notice but a novice would miss.

**Key points**:
- List 3-5 signals
- Each signal is "an observable fact + what it implies"
- Signals should **differentiate** expert sensitivity from novice sensitivity

**Example**:
> - D1 stable but W4 dropping → The problem isn't first-time experience but the "reason to stay" after week two
> - Support ticket volume ratio shows no abnormal growth → The churning users are "silent leavers," not active complainers
> - The decline slope is smooth rather than a cliff → Not caused by a single release or incident; more likely a cumulative effect
> - A wave of traffic from a specific KOL arrived during the same period → New signup profiles may have shifted

### Section 3: Decision Options

**What to write**: 2-4 realistic action paths, each of which is reasonably defensible.

**Key points**:
- Don't place an "obviously wrong" option next to the "correct answer" — that's a giveaway
- Each option should specify "what to do + underlying assumption + required resources and time"
- Options should involve **genuine trade-offs** (time vs. accuracy, depth vs. speed)

**Professional Adversary Test (mandatory)**: For every non-selected option, you must be able to articulate "why a certain expert would choose this" as a defense. An option with no defensible rationale is a **straw man** and must be redesigned. A qualified scenario has at least **two options that experts from different schools or styles could each defend** — only specific situational details allow an expert to judge which is superior. In other words: if a professional reads the scenario and knows within 10 seconds that "obviously B is the answer," the scenario is broken and must be rewritten.

- How to run the Professional Adversary Test: After writing 3-4 options, ask yourself for each non-selected option: "Would DoorDash's Jessica Lachs choose this? Would Airbnb's Chetan Sharma choose this? Which well-known senior expert would defend this choice, and under what circumstances?" — if you can't picture at least one real defender, the option lacks professional tension.

**Example**:
> A. **Immediately push a win-back notification** (2 hours to launch) — Assumes "users forgot about us." Defender profile: An expert with a product ops background, in a high-volume C-end scenario with limited support resources, would prioritize this as "do something first to stop the funnel from deteriorating further."
> B. **Run cohort analysis to find the churn inflection point** (1 day) — Diagnose before acting. Defender profile: The default choice for a Staff-level data analyst; when there's a clear time window, they always locate the problem before acting.
> C. **Conduct 5-8 churned user interviews** (3 days) — Probe the real feelings behind the "silence." Defender profile: An expert with a product research background would choose this when "data already tells us What but doesn't explain Why."
> D. **Split cohorts by KOL channel** (half a day) — First validate the "channel profile shift" hypothesis. Defender profile: An expert with a growth background would prioritize "cheap falsification" — half a day's cost to eliminate one hypothesis offers the best ROI.

### Section 4: Reasoning

**What to write**: Which path a senior expert would choose, why, and the full chain of reasoning.

**Key points**:
- This is the **soul** of the entire scenario — the longest section (300-500 words)
- Show the **reasoning chain**, not just the answer
- Demonstrate **trade-off analysis** — why pick B over A
- Reference specific item numbers from 01/02/03, so the Agent can see "which responsibilities/competencies/knowledge my judgment draws upon"

**Example structure**:
> The expert's first instinct is not to choose A (push win-back), because that's "symptom treatment" — medicating without knowing the cause means even failure teaches nothing. The expert would use D (low cost, half a day) to quickly validate the profile-shift hypothesis (invoking Competency 2.4 Data Segmentation, Knowledge 3.11 Cohort Analysis); if the KOL-channel users show especially low W4, the problem is pinpointed; if not, proceed to B (cohort analysis to locate the retention inflection point, invoking Competency 2.7)...

### Section 5: Common Pitfalls

**What to write**: Mistakes commonly made in this scenario and their root causes.

**Key points**:
- List 2-4 pitfalls
- Each pitfall describes "how the mistake happens + why it happens"
- Pitfalls should be realistically observable — ideally referencing a "typical error pattern"

**Example**:
> 1. **Rushing to act**: Under CEO time pressure, jumping straight to A, turning the push into "doing something just to check the box"
> 2. **Over-analyzing**: Trying to do B+C+D all at once, burning 5 days, missing the window for "quick discovery + small course corrections"
> 3. **Single-cause attribution**: Drawing conclusions from a single dimension of decline, ignoring the possibility of multiple coexisting hypotheses
> 4. **Ignoring silent users**: Assuming "no complaints means no problem," substituting support tickets for real user research

### Section 6: Novice vs Expert Comparison

**What to write**: Side-by-side comparison of two skill levels' behaviors in the same scenario, highlighting differences.

**Key points**:
- Use a table or parallel paragraphs
- Differences should be **specific to actions**, not vague statements like "novices think shallowly, experts think deeply"
- 3-5 comparison points is ideal

**Example**:

| Dimension | Novice Behavior | Expert Behavior |
|---|---|---|
| First action | Opens Amplitude to look at the W4 retention curve | First asks "Have we looked at D1/D7/D30? Which segment has the problem?" |
| Hypothesis generation | Trusts the PM's 7-cause list | Independently writes their own hypothesis list and cross-references it with the PM's |
| Research method | Only looks at quantitative data | Quantitative to locate the problem segment + qualitative to explain the cause |
| Reporting style | Reports "found X problems" | Reports "problem, confidence level, next steps, timeline" |

### Section 7: Related Scenarios (recommended but not mandatory)

**What to write**: 1-3 notes on "how this scenario connects laterally with other scenarios." For example: "The diagnostic method in this scenario is reused in Scenario 3.4 for a different context," or "Contrasts with Scenario 5.2 — same problem but at a different organizational stage."

**Why include this**: When an expert encounters a new problem, their brain doesn't retrieve an isolated single scenario — it retrieves **a cluster of related scenario memories**: "This reminds me of when I handled X last time... but this time the context is Y, so the approach differs." Section 7 enables the Agent to build lateral cross-references between scenarios after reading the profile, rather than only being able to invoke them linearly.

**Example**:
> - **Related Scenario 3.4** (same "diagnose before acting" reasoning pattern, but applied to a GTM decision)
> - **Related Scenario 5.2** (same retention problem, but occurring in a 100+ maturity stage — the diagnostic path is completely different; reading them side by side reveals how organizational stage affects methodology)

When a scenario has no obvious lateral connections, Section 7 may be omitted. However, **it is strongly recommended that at least 60% of scenarios in the 04 document include Section 7** — this is the key to upgrading the scenario library from a "sample collection" to a "networked knowledge base."

---

## Weak Coverage Rule: Up to 10% of Responsibilities May Lack Dedicated Scenarios

**Not all responsibilities are suited for standalone six-section scenarios.** Some responsibilities are "daily disciplines" rather than "key decisions" — their essence is routine actions performed daily or weekly, with no "tension between decision options." For example:

- "Write a weekly data analysis report"
- "Conduct peer code review on every deliverable analysis"
- "Document and archive all new metric definitions"

If these responsibilities are forced into the six-section format, two problems arise: (a) Section 3 "Decision Options" can't produce 2-4 options with genuine professional tension (because it's essentially "do it vs. don't do it"); (b) the resulting scenarios dilute the overall density of 04, making readers feel "some scenarios are rich, others are watered down."

**Weak coverage rules**:

1. **Up to 10% of responsibilities (approximately 2-3 items) may be weakly covered in 04** — meaning no dedicated scenario
2. **Prerequisites for weak coverage**:
   - The responsibility is **discipline-type** rather than **decision-type** — performed daily/weekly per protocol, with no "judgment between A/B/C"
   - It is **implicitly demonstrated** in a section of another scenario — e.g., "In Scenario 1.2, Section 3, the expert casually writes and sends a weekly report"
   - It is **explicitly listed in the 04 appendix as a 'weakly covered responsibility'**, with an explanation for each
3. **Key decision-type responsibilities must have strong coverage** — a dedicated six-section scenario; weak coverage applies only to discipline-type items

**Checklist**:
- [ ] Number of weakly covered responsibilities ≤ 10% of total responsibilities
- [ ] Each weakly covered responsibility is discipline-type, not decision-type
- [ ] Each weakly covered responsibility is annotated with rationale in the appendix

---

## Scenario Count and Distribution

**Total**: 18-22 scenarios (20 recommended)

**Distribution principle**: Distribute scenarios according to the hierarchical structure of the 01 document — **more for core layers, fewer for peripheral layers.**

**Distribution guidelines for the strict six-layer model**:
- Strategic Layer: 3-4 scenarios
- Tactical Layer: 3-4 scenarios
- Execution Layer: 4-5 scenarios (typically the most)
- Professional Depth Layer: 3-4 scenarios
- Organizational Layer: 3-4 scenarios
- Self-Evolution Layer: 2-3 scenarios

**Distribution guidelines for Path C model**:
- Core Axis: 4-5 scenarios
- Each Operational Dimension: 3 scenarios
- Cross-Dimension Responsibilities: 3-4 scenarios

---

## Three Hallmarks of a Good Scenario

**Hallmark 1: Genuine Tension**
A good scenario always has two or more "correct directions" pulling against each other — speed vs. depth, user value vs. business value, short-term vs. long-term. If the answer is obvious, it's not an "expert scenario."

**Hallmark 2: Differentiates Skill Levels**
A junior and an expert would make observably different choices in this scenario. If both skill levels would make the same choice, the scenario fails to demonstrate expert value.

**Hallmark 3: Reusable Judgment Patterns**
The reasoning approach, questions, and checkpoints the expert uses in this scenario can transfer to similar situations. A scenario is not "the answer for this one time" but "a thinking template for this class of problems."

---

## Scenario Topic Selection Methods

**Method A: Start from Responsibilities (recommended)**
Review each item in the 01 document and ask: "In what situation is this responsibility invoked, and what is the typical decision at that point?" Write the answer as a scenario.

**Method B: Start from "Expert High-Frequency Pain Points"**
Recall or ask the user: In frontline work for this role, which moments are most error-prone, most mentally taxing, and most revealing of skill-level differences? Turn these moments into scenarios.

**Method C: Start from Anti-Patterns**
Recall well-known industry "anti-pattern" cases (e.g., over-reliance on A/B testing leading to local optima, premature scaling causing PMF loss), and reverse-engineer scenarios from them.

---

## Scenario Mapping Table (mandatory output, must be built incrementally)

**Mandatory discipline**: After completing the six sections of each scenario, **immediately append a mapping annotation at the end of the six sections**. Do not wait until all 20 scenarios are finished to backfill. Format:

```markdown
**→ Maps to**: Responsibility 01-1.2 / Competency 02-2.4, 02-2.7 / Knowledge 03-3.11, 03-3.14
**→ Related Scenarios**: 4.2, 5.1 (optional Section 7 index)
```

Rationale: If you wait until all 20 scenarios are complete before backfilling mappings, you'll likely discover that some scenarios lack a genuine responsibility anchor — but by then the sections are already written, and the author will tend to "force-fit a responsibility," which contaminates 01 in reverse. **Building incrementally** forces every new scenario to have an anchor before writing begins, eliminating orphan scenarios at the source.

The appendix of the scenario document must include a "Scenario-Responsibility-Competency-Knowledge" four-dimensional summary mapping table:

| Scenario # | Scenario Name | Mapped Responsibilities | Invoked Competencies | Underlying Knowledge | Weakly Covered Responsibilities |
|---|---|---|---|---|---|
| 1.1 | W4 Retention Cliff Diagnosis | 1.2, 3.4 | 2.4, 2.7, 2.12 | 3.11, 3.14 | — |
| 1.2 | ... | ... | ... | ... | — |
| Appendix | **Weakly Covered Responsibilities List** (≤10%) | 1.18 (Weekly Report), 3.5 (Code Review) | — | — | ✅ Discipline-type |

This mapping table serves as the cross-validation evidence for the closure phase: it proves that every scenario in 04 genuinely invokes responsibilities/competencies/knowledge defined in the first three documents, with nothing fabricated; it also records which responsibilities were deliberately designated as weakly covered.

---

## Anti-Pattern Examples

**Anti-pattern 1: Scenario too abstract**
> ❌ "Facing team deadline pressure, how do you make the right decision?"
> ✅ "The Product Lead says the launch date can't move, engineering says this change needs at least 3 more days, and you believe the current demo still has one critical UX friction point. Friday at noon, you need to decide whether to delay the release."

**Anti-pattern 2: Single correct answer**
> ❌ Only one option: "Talk to the PM about delaying the release"
> ✅ Three options pulling in different directions (delay / cut features and ship / ship with known issue + hotfix plan)

**Anti-pattern 3: Missing Key Signals section**
Jumping directly from "Situation" to "Options" — the Agent cannot learn "what the expert would pay attention to here."

**Anti-pattern 4: Reasoning section written as a "standard answer"**
Only states "B is correct" without showing the reasoning process or explaining why A and C were not chosen.

---

## Workflow for Generating Scenarios

1. **Draft the scenario topic outline**: List titles and one-sentence summaries for all 20 scenarios, organized by layer; simultaneously **mark which responsibilities are weakly covered** (≤10%)
2. **Review the outline with the user**: Confirm coverage, core-layer density, no duplicates, and reasonable weak coverage
3. **Fill in the six sections one by one** (plus optional Section 7): Each scenario should be 500-1000 words
4. **After completing each scenario, immediately do three things**:
   - Run the **Professional Adversary Test** on every non-recommended option in Section 3; rewrite any option that lacks a defensible rationale
   - Append the `→ Maps to: Responsibility/Competency/Knowledge` mapping at the end of the six sections
   - If there are lateral connections to other scenarios, add Section 7 `→ Related Scenarios: X.Y`
5. **After all scenarios are complete, build the four-dimensional summary mapping table**
6. **Self-check**:
   - [ ] Every scenario has tension, differentiates skill levels, and contains reusable patterns
   - [ ] All options in Section 3 of every scenario have passed the Professional Adversary Test
   - [ ] Weakly covered responsibilities ≤ 10% and all are discipline-type
   - [ ] At least 60% of scenarios include Section 7 related scenario annotations
