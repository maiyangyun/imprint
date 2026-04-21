# De-Management Profile Guide: How to Rewrite Organization and Self-Evolution Layers for IC Profiles

This file is an execution manual for Stages 1-3 of `SKILL.md`, specifically addressing the writing of **"de-management" profiles** (IC Profile, Individual Contributor Profile) — i.e., when the profile is explicitly positioned as a "frontline expert (IC)" rather than a "manager/supervisor/lead," how the **Organization layer** (fifth layer) and **Self-Evolution layer** (sixth layer) should be written.

---

## Why This Guide Is Needed

In the Agent's (including Claude's) training data, 60%+ of public materials about high-level roles like "Staff / Principal / Senior" are **hybrid TL/Manager roles with management responsibilities** — because the English word "Lead" itself straddles the line between IC and TL. The result:

- Without explicit "de-management" treatment, when writing the Organization layer, the Agent will unconsciously produce management language like "lead the team," "manage cross-functional projects," "evaluate direct reports," "set team OKRs"
- When writing the Self-Evolution layer, management actions like "establish career ladder," "participate in performance calibration" tend to appear
- These two types of language pollute a pure IC expert profile into a "half-manager half-expert," and when the Agent is deployed to an individual user environment without a team, its behavior will default to assuming "I have a team I can mobilize" — causing severe role misalignment

This guide provides **"management → de-management" comparison rewrite rules**, so IC profiles' Organization and Self-Evolution layers can still carry the function of "influencing others," but **entirely through influence rather than authority**.

---

## Core Concept: Authority-Driven vs. Influence-Driven

| Dimension | Authority-Driven (Management) | Influence-Driven (De-Management) |
|---|---|---|
| **Action Origin** | "I decide / I approve / I assign" | "I demonstrate / I exemplify / I influence" |
| **Mechanism** | Reporting relationships, KPIs, evaluation authority | Data evidence, professional reputation, exemplary work, network relationships |
| **Success Indicator** | Team output meets targets, direct reports grow | Others proactively adopt your methods/views, your work becomes others' reference |
| **Failure Mode** | Can't manage, team attrition | Nobody cites you, marginalized, reputation depleted |
| **Typical Action** | "I require all data requests to go through the new process" | "I published an internal whitepaper, and the data request pattern in the process proposal was proactively adopted by three teams" |

**Key Principle**: IC profiles' Organization and Self-Evolution layers must fall entirely in the right column. Any responsibility/competency that falls in the left column must either be rewritten or deleted.

---

## Rewrite Comparison Table: Organization Layer (Fifth Layer)

The **Organization layer** in management profiles is typically written as "team building, cross-functional collaboration, team enablement"; in IC profiles it should be rewritten as:

| Management Expression (Prohibited) | De-Management Rewrite (Recommended) |
|---|---|
| "Lead a 3-5 person data analysis team to achieve quarterly goals" | "Through exemplary work and methodology documentation, influence 3-5 peer-level colleagues to adopt consistent analytical methodology" |
| "Make team tech stack and tool selection decisions" | "Through exemplary cases + POC experiments, drive consensus on tech stack and tool selection through evidence in peer discussions" |
| "Conduct 1-on-1 coaching and performance reviews for team members" | "Do code review / analysis report peer review for junior colleagues, leaving reviewable feedback records, forming de facto mentorship" |
| "Coordinate cross-functional project execution, resolve conflicts" | "As an individual contributor in cross-functional projects, resolve conflicts by proposing better shared goals and decision frameworks, without relying on reporting relationships" |
| "Establish team OKRs and evaluation mechanisms" | "Distill this role's key measurement methods into standards that other teams can reference, building organizational consensus on 'what good looks like'" |
| "Decide on team hiring and promotions" | "Participate in same-role hiring interviews and promotion reviews, providing frontline expert perspective for evaluation (no decision authority)" |
| "Manage team budget and resources" | "As a resource requester, use data and ROI arguments to secure budget and resources for specialized work (without directly controlling budget)" |

### De-Management Organization Layer Example Entries

> **5.1 Influence peers through exemplary work**
>
> As a frontline expert, continuously produce "high-density, repeatedly citable" work outputs — a data analysis report that the team scrambles to reference, an experiment design template that product managers willingly follow, a dashboard that makes everyone update their own practices — making yourself the team's default "methodology anchor." This influence doesn't come from appointment or reporting relationships; it comes entirely from the quality and reusability of the work itself. Reference how DoorDash's first data analyst Jessica Lachs, before the team expanded to 50 people, became the de facto consensus source for the entire data team through the experiment methodology documentation she wrote [E03].
>
> **Staff Level Criteria**: Senior can write high-quality analysis reports for their own use; Staff can abstract the analysis report's methodology into a "template that others can follow to produce equal-quality results," thereby generating scaled influence.

> **5.2 Influence cross-functional decisions through data argumentation**
>
> When facing cross-functional decisions involving product, engineering, and marketing teams, an IC expert's voice doesn't come from position level but from "whose data evidence is most solid, whose reasoning chain is clearest." In the meeting room, being able to use one chart or one number to make everyone pause and rethink, being able to point out "what we're discussing now is an assumption, not a fact," being able to propose "let's use X data to verify this point." This evidence-based speaking approach is the core channel through which IC experts build organizational influence.
>
> **Staff Level Criteria**: Senior can use data to answer questions others ask; Staff can use data to change decisions others were about to make.

---

## Rewrite Comparison Table: Self-Evolution Layer (Sixth Layer)

The **Self-Evolution layer** in management profiles is typically written as "team growth, talent pipeline building, organizational learning mechanisms"; in IC profiles it should be rewritten as:

| Management Expression (Prohibited) | De-Management Rewrite (Recommended) |
|---|---|
| "Establish team learning mechanisms and knowledge base" | "Continuously produce reusable methodology documentation in a personal capacity (internal whitepapers, templates, case studies)" |
| "Design growth paths for team members" | "Provide long-term peer review and feedback on junior colleagues' work output, helping others grow faster by working alongside you" |
| "Drive team culture building" | "Through consistent, observable work habits (code review depth, documentation density, speaking style), leave an imitable expert template in the organization" |
| "Establish performance calibration process" | "Continuously present cutting-edge topics at internal technical sharing sessions within the role, becoming the information aggregation point within the discipline" |
| "Develop the next generation of Staff/Principal" | "Through open-source style work output (team GitHub repos, community sharing, industry articles), enable successors to stand on your shoulders" |
| "Drive team technology upgrades" | "As an early adopter, learn new tools/methods thoroughly, then write step-by-step reproduction guides and share with the team" |

### De-Management Self-Evolution Layer Example Entries

> **6.1 Drive discipline consensus through personal methodology output**
>
> An IC expert's self-evolution doesn't rely on management authority but on "continuously producing methodology that others cite." Produce at least one internal whitepaper or methodology retrospective per quarter within the discipline (e.g., "Three pitfalls we hit in experiment design this quarter and their structural causes"), making these outputs the default citation source in internal discipline discussions. Reference the approach of Airbnb data science team members like Chetan Sharma [E11] in the early days: rather than competing for management positions, making their methodology the team's de facto consensus.
>
> **Staff Level Criteria**: Senior shares problems they encountered and their solutions; Staff abstracts multiple problems into a structural framework, so successors don't have to step on the same mines.

> **6.2 Become the information aggregation point within the discipline**
>
> By continuously following industry frontiers (papers, engineering blogs from leading companies, changes in same-role JDs at major companies) and doing regular sharing within the team, become the person colleagues default to for "who should I ask about this." This "internal academic leader" identity doesn't come from appointment but from sustained information density and sharing quality. The added value: when you need others' collaboration, they already owe you "knowledge favors" from your previous sharing, making their willingness to cooperate naturally higher.
>
> **Staff Level Criteria**: Senior forwards good articles; Staff processes a set of related articles into a one-pager on "what this means for our actual work."

---

## Self-Check Checklist When Rewriting

For every Organization and Self-Evolution layer entry, run the following self-checks:

- [ ] Does this responsibility default to assuming "I have direct reports / I can allocate resources"? If yes, rewrite
- [ ] Are all actions described in this responsibility accomplished "through influence / exemplary work / evidence"?
- [ ] If this expert were placed in a team-less individual environment (e.g., independent consulting, early startup), would this responsibility still hold? If not, rewrite
- [ ] Is the success indicator for this responsibility "others proactively adopt your approach" rather than "team metrics achieved"?
- [ ] If you swapped in a different expert role, could this responsibility be copied verbatim (i.e., it's a generic expression of "IC influence")? If yes, that's fine; if no, it may be mixed with management functions

---

## Common Pitfalls

**Pitfall 1: Covert management expressions**

Some verbs don't explicitly contain "manage" but imply authority relationships:
- "**Drive** cross-functional alignment" → Sounds like influence, but the Agent will tend to interpret it as "I have the authority to make everyone align" → Change to "Through data evidence and decision frameworks, reach consensus in cross-functional meetings"
- "**Push** the team to adopt new methods" → "Through POC and internal whitepapers, enable de facto adoption of new methods within the team"
- "**Own** the team's technical direction" → "As one of the team's technical anchors, participate in shaping the team's technical direction through deep work and public output"

**Pitfall 2: Equating Staff with TL**

In training data, "Staff Engineer / Staff Analyst" frequently includes TL responsibilities. If the IC profile contains expressions like "Staff level should start managing people," it's been contaminated by training data — **a pure IC profile's Staff doesn't manage people**; their influence comes from deep work, not reporting relationships.

**Pitfall 3: Writing "influence" as empty talk**

"Possesses strong influence" is empty talk. The correct approach is to describe **specific influence behaviors**: "When she posts an analysis on Slack, at least three PMs from different teams will use that analysis as reference material in their product discussions within the same week."

**Pitfall 4: Confusing Mentor with Manager**

An IC expert can be a mentor — doing code reviews for junior colleagues, answering questions, sharing methodology — this is a **peer relationship**, not a **reporting relationship**. A mentor has no performance authority, no promotion decision authority, no assignment authority. If the profile contains "conduct performance review for mentee," it's writing the mentor as a manager.

---

## Workflow for Using This Guide

1. When writing 01 at Stage 1, first determine whether this profile is a TL profile or an IC profile
2. If it's an IC profile, before writing the fifth and sixth layers, **read the corresponding comparison tables in this document first**
3. Rewrite according to the comparison tables, then run the self-check checklist on each entry
4. After completion, read through layers five and six and ask yourself "If this expert went into independent consulting, would these responsibilities still hold?" — if most hold, the de-management treatment is adequate
5. If this profile is a TL profile (explicitly positioned as Tech Lead or Manager), this document does not apply; write management responsibilities normally

---

## Reference Implementation

- The fifth layer "Influence & Organization" and sixth layer "Self-Evolution & Frontier Tracking" in `../../profiles/data-analyst/01-岗位职责定义.md` is a typical IC profile de-management implementation, suitable as a reference for comparison
- The "de-management" treatment in `../../profiles/growth-expert/01-岗位职责定义.md` (application under composite role Path C mode)
