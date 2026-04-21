# Research Methodology: From "Writing by Impression" to "Writing with Evidence"

This file is the execution manual for Stage 0.5 in `SKILL.md`. **After Stage 0 interviews are complete and before Stage 1 document generation begins, the research process defined in this file must be completed.**

---

## Why Research Is Mandatory

When Agents (including Claude) generate role profiles, three inherent biases exist:

**Bias 1: Big Tech Bias**
JDs, blogs, and courses from Google, Meta, Amazon, and other big tech companies are disproportionately represented in training data. Without targeted research, generated profiles will unconsciously lean toward "mature-stage, highly specialized, infrastructure-complete" big tech profiles — even if the user explicitly says "I'm at the 0-1 stage."

**Bias 2: English-World Bias**
Mainstream tech blogs, course platforms, and practitioner accounts are predominantly in English. Differences in role practices across the Chinese internet, Southeast Asia, Latin America, and other markets get overlooked.

**Bias 3: Averaging Bias**
Agents tend to output "the greatest common denominator of various JDs" rather than a sharp profile tailored to a specific industry + specific stage. A greatest-common-denominator profile looks like "everything is correct" but in reality "nothing goes deep."

**The purpose of research is to counter these three biases with first-hand evidence.** Every judgment like "this role at the 0-1 stage needs to build the data warehouse themselves" should be traceable to "a real practitioner said this" or "an early-stage company JD explicitly listed this responsibility."

---

## Five-Dimension Research Framework

Before each profile generation, you must obtain **at least 2 pieces** of first-hand evidence across each of the following five dimensions (total ≥ 10):

### Dimension 1: Real JDs (Job Descriptions)

**Goal**: Understand the market's real demand definition for this role — not what the Agent thinks the definition is, but what hiring parties actually wrote.

**Search strategy**:
- English queries: `"<role title>" site:linkedin.com/jobs`, `"<role title>" "<company stage>" hiring`
- Chinese queries: `"<role title>" 招聘 "<organization stage keyword>"`
- Targeted queries: `"<leading company name>" "<role title>" job description`
- Early-stage specific: `"<role title>" site:angel.co`, `"<role title>" "seed stage"` / `"Series A"`

**What to extract**:
- Responsibility lists (Responsibilities section)
- Must-have skills and nice-to-have skills
- Reporting relationships (Reports to)
- The company's positioning statement for this role (Opening paragraph)

**What to focus on**:
- JD differences for the same role across companies at different stages
- Width of the "must-have skills" list — reflects responsibility boundaries
- Whether infrastructure building is mentioned (reflects organizational maturity)

### Dimension 2: Practitioner Accounts

**Goal**: Understand how people who've held this role describe their daily work, challenges, and skill trees — this is more authentic than JDs, because JDs are idealized while accounts are lived experiences.

**Search strategy**:
- `"first data hire" startup` / `"first analyst" "early stage"`
- `"day in the life" "<role title>"`
- `"what I learned" "<role title>" "<company>"`
- `"<role title>" "lessons learned" blog`
- `"<known practitioner name>" "<role keyword>"` (if well-known practitioners in the field are known)

**What to extract**:
- Typical day/week work content
- Biggest challenges and surprises
- "I thought I needed X but actually needed Y" cognitive shifts
- Recommended learning paths

### Dimension 3: Courses/Training Systems

**Goal**: Understand the systematic knowledge structure for this role — course designers have already done a round of distillation on "what constitutes core knowledge" for us.

**Search strategy**:
- `"<role title>" course syllabus`
- `"<role title>" certification`
- `Reforge "<relevant topic>"` / `DataCamp "<relevant topic>"`
- `"<role title>" 课程 大纲`

**What to extract**:
- Course module organization (reflects the skeleton of the knowledge system)
- Core modules vs. elective modules (reflects essential vs. bonus knowledge)
- Prerequisite relationships (reflects knowledge dependency chains)

### Dimension 4: Industry Cases

**Goal**: Understand exemplary practices from leading companies for this role — providing "reference anchors for expert-level benchmarks."

**Search strategy**:
- `"<company>" "<role-related topic>" blog` / `engineering blog`
- `"<company>" "data team" "how we"` / `"lessons from"`
- Targeted searches on industry media like First Round Review, Lenny's Newsletter
- `"<company name>" 数据驱动 实践`

**What to extract**:
- How the company defines this role's responsibilities
- Specific tool stacks, processes, and methodologies
- Success stories and cautionary tales

### Dimension 5: Methodologies/Frameworks

**Goal**: Confirm the widely recognized core methodologies for this role — ensuring `03-知识体系.md` doesn't miss critical frameworks.

**Search strategy**:
- `"<role title>" frameworks` / `"<role title>" methodology`
- `"<domain keyword>" 经典 框架 方法论`
- Review classic book tables of contents in the field (via book reviews or Goodreads searches)

**What to extract**:
- Core framework inventory
- Applicable scenarios and limitations for each framework
- Latest methodology trends in the industry

---

## Search Execution Process

### Step 1: Construct the Search Query Matrix

Based on the six parameters aligned in Stage 0, construct a search query matrix:

```
Dimension × Parameter = Query

Example (Data Analytics Expert · 0-1 Stage · SaaS):
JD Dimension:
  - "data analyst" "seed stage" OR "series A" job description
  - "first data hire" startup SaaS
  - "数据分析" 招聘 "早期创业"
Practitioner Dimension:
  - "first data hire" startup "what I learned"
  - "solo analyst" startup blog
  - "early stage" "data team of one"
Course Dimension:
  - "data analytics" course syllabus startup
  - Reforge "data informed" curriculum
Case Dimension:
  - "how we built" data team "series A"
  - First Round Review data analytics startup
Methodology Dimension:
  - "data analytics" frameworks methodology
  - "统计分析" 经典 方法论 框架
```

**Minimum standard**: At least 2 query sets per dimension, totaling ≥ 10 search query sets.

### Step 2: Execute Searches

Use the WebSearch tool to execute each query set. **Review the titles and summaries of at least 3-5 results per query set** to determine whether they're worth reading in depth.

**Priority ranking** (when search results are excessive):
1. First-hand practitioner accounts > JDs > Course syllabi > Cases > Methodology overviews
2. Content from the target organization stage > Generic content > Content from other stages
3. Content from the past 3 years > Older content (role definitions evolve over time)

### Step 3: Deep Reading

For filtered high-value results (typically 5-10 articles), use WebFetch to obtain full text. Focus on extracting:

- **Factual statements directly relevant to the profile** ("As Gojek's first data analyst, I spent 80% of my first three months building ETL pipelines")
- **Counter-intuitive findings** ("The most important skill for an early-stage DA isn't SQL but storytelling")
- **Cross-validation points with other evidence**

### Step 4: Evidence Recording

Record each piece of evidence in the following format:

```markdown
**[Dimension] Evidence #N**
- Source: <URL or reference>
- Key finding: <1-3 sentence summary>
- Impact on profile: <Which layer/item of the profile should this evidence affect>
- Confidence: High/Medium/Low (whether cross-validated by other evidence)
```

### Step 5: Cross-Comparison and Conclusions

Compare all evidence to identify:

**Consensus** (≥ 3 pieces of evidence pointing in the same direction):
- These consensus points should become "hard-core items" in the profile — must be included

**Disagreements** (contradictory claims from different sources):
- Flag disagreements, present them to the user in Stage 0.8, and let the user make the call

**Blind spots** (insufficient evidence found for a dimension):
- Flag as "low confidence," use more conservative language in the profile, and note that follow-up validation is needed

---

## Minimum Passing Criteria for Research

After research is complete, self-check with the following checklist. **If any item fails, do not proceed to Stage 0.8**:

- [ ] Each of the five dimensions has ≥ 2 pieces of evidence (total ≥ 10)
- [ ] At least 3 pieces of evidence are from the target organization stage (not generic/other stages)
- [ ] At least 2 practitioner accounts (not JDs — real experiences)
- [ ] Every layer of the skeleton has ≥ 1 piece of supporting evidence
- [ ] All discovered disagreement points have been identified and recorded

---

## Common Research Pitfalls

**Pitfall 1: Only searching in English**
The Chinese internet has extensive localized role practices (especially for operations, growth, data, and other business-oriented roles). You must search in both Chinese and English.

**Pitfall 2: Only reading JDs, not practitioner accounts**
JDs are "idealized requirement lists"; practitioner accounts are "real daily life." The two often have significant gaps. Profiles should align with "real daily life."

**Pitfall 3: Only looking at the first page of search results**
High-value practitioner accounts often rank on pages 2-3 of search results. Don't stop after the first 3 results.

**Pitfall 4: Using search results to confirm preconceived judgments**
This is the most insidious bias — the Agent already has a judgment that "this role should be X," then only searches for evidence supporting X. **You must also search for "counter-evidence."** For example, if you judge that "0-1 stage DAs don't need complex modeling," search for "early stage data scientist machine learning" to see if there are counterexamples.

**Pitfall 5: Treating one high-quality piece of evidence as multiple**
A well-written practitioner blog post does not equal "multi-source validation." No matter how good the content, a single source only counts as one piece.

---

## Research Deliverables and Handoff to Stage 0.8

After research is complete, organize deliverables into a **Research Brief** and present it to the user in the conversation (recommended format):

```markdown
## Research Brief: <Role Name> · <Industry> · <Organization Stage>

### Evidence Summary (N total)
| # | Dimension | Source | Key Finding |
|---|---|---|---|
| 1 | JD | <source> | <finding> |
| 2 | Account | <source> | <finding> |
| ... | ... | ... | ... |

### Core Consensus (Multi-Source Agreement)
1. <Consensus 1> (Evidence #1, #3, #7)
2. <Consensus 2> (Evidence #2, #5, #9)
3. ...

### Key Disagreements (Require User Decision)
1. <Disagreement 1>: Evidence A says..., Evidence B says...
2. ...

### Research-Based Skeleton Draft
<Six-layer/Path C skeleton, each layer with 3-5 key responsibility directions + evidence numbers>
```

This brief is the core content presented to the user in Stage 0.8. After user confirmation, the research brief serves as the "input material" for profile generation, referenced repeatedly throughout Stages 1-5.
