---
name: seo-content-brief
description: >
  Generate comprehensive, SERP-driven content briefs for writers. Analyzes
  top-ranking competitors, identifies content gaps, specifies structure,
  word count, keywords, E-E-A-T requirements, AI citation readiness, and
  schema recommendations. Use when user says "content brief", "writing brief",
  "content outline", "article brief", or "create brief for".
---

# seo-content-brief — SERP-Driven Content Brief Generation

## Brief Generation Process

### Step 1: SERP Analysis
Analyze top 10 results for the target keyword:
1. Fetch SERP results (via WebSearch or SERP API data)
2. Identify content patterns across top rankers
3. Map SERP features present (AI Overview, Featured Snippet, PAA, Video)
4. Determine dominant search intent

### Step 2: Competitor Content Analysis
For each top-5 ranking page, extract:

| Element | What to Capture |
|---------|----------------|
| Word count | Total and per-section breakdown |
| Heading structure | H1, H2, H3 hierarchy and topics covered |
| Content format | Lists, tables, images, videos, infographics |
| Unique angles | What differentiates each competitor's approach |
| E-E-A-T signals | Author credentials, sources cited, experience markers |
| Schema used | Article, FAQ, HowTo (deprecated), Product, etc. |
| Internal links | How many, to what types of pages |
| Multimedia | Images count, video embeds, infographics |

### Step 3: Content Gap Identification
Compare competitor coverage to find:
- **Subtopics ALL top 5 cover** → Must include (table stakes)
- **Subtopics 2-3 cover** → Should include (competitive advantage)
- **Subtopics NONE cover** → Opportunity for differentiation
- **Questions in PAA** → Direct answer opportunities
- **AI Overview sources** → What got cited and why

### Step 4: Brief Assembly

## Content Brief Template

```markdown
# Content Brief: [Target Keyword]

## Target
- **Primary Keyword**: [keyword] (search volume: X/mo, difficulty: X)
- **Secondary Keywords**: [3-5 keywords with volume]
- **Search Intent**: [Informational / Commercial / Transactional / Navigational]
- **Target URL**: [new page or existing URL to update]

## SERP Landscape
- **AI Overview present**: Yes/No — [if yes, what sources cited]
- **Featured Snippet**: Yes/No — [type: paragraph/list/table]
- **PAA questions**: [list 4-6 questions]
- **SERP features**: [Video, Image Pack, Local Pack, Shopping, etc.]
- **Dominant content format**: [Guide / Listicle / Comparison / Tutorial]

## Content Specifications
- **Target Word Count**: [X-Y words] (based on competitor avg ±20%)
- **Content Format**: [Long-form guide / Listicle / How-to / Comparison]
- **Reading Level**: [Grade 8-10 for general, Grade 12+ for technical]
- **Tone**: [Authoritative / Conversational / Technical / Educational]

## Required Structure

### H1: [Exact title recommendation]
### Opening (first 200 words):
- Direct answer to the primary query
- Key statistic or fact
- Value proposition for reading further
- Primary keyword in first 60 words

### H2: [Section 1 title]
- Key points to cover
- Data/statistics to include
- [134-167 word self-contained answer block for AI citation]

### H2: [Section 2 title]
- Key points to cover
- Comparison table recommended
- Internal link opportunity: [target page]

### [Continue for all required H2/H3 sections...]

### FAQ Section
- Q: [PAA question 1] — A: [brief answer guidance]
- Q: [PAA question 2] — A: [brief answer guidance]
- Q: [PAA question 3] — A: [brief answer guidance]

## Keyword Integration
- **Primary keyword density**: 0.5-1.5%
- **Keyword placement**: Title, H1, first 100 words, 1-2 H2s, meta description
- **Semantic keywords**: [10-15 LSI terms to weave naturally]
- **Entity mentions**: [related entities to reference]

## E-E-A-T Requirements
### Experience
- [ ] Include first-hand experience signals ("In our testing...", "We found that...")
- [ ] Original data, screenshots, or case study results
- [ ] Process documentation or methodology description

### Expertise
- [ ] Author byline with relevant credentials
- [ ] Technical accuracy verified by subject matter expert
- [ ] Up-to-date with current developments (cite recent sources)

### Authoritativeness
- [ ] Cite 3-5 authoritative external sources
- [ ] Reference industry standards or official documentation
- [ ] Include expert quotes where possible

### Trustworthiness
- [ ] Publication date and last-updated date
- [ ] Clear attribution for all claims
- [ ] Transparent about limitations or caveats

## AI Citation Readiness
- [ ] Self-contained answer blocks (134-167 words) for key questions
- [ ] Clear definition patterns ("X is..." / "X refers to...")
- [ ] Specific statistics with sources (AI systems preferentially cite data)
- [ ] Structured comparison tables (AI extracts tabular data effectively)
- [ ] Question-based H2/H3 headings matching search queries

## Multimedia Requirements
- [ ] Hero image (above fold, relevant to topic)
- [ ] [X] supporting images/diagrams (one per major section minimum)
- [ ] Alt text specifications for each image
- [ ] Video embed recommendation: [Yes/No — if yes, what content]
- [ ] Table/chart for comparative data

## Schema Markup
- **Required**: [Article / BlogPosting / Product / etc.]
- **Recommended**: [BreadcrumbList, Person (author), Organization]
- **Optional**: [VideoObject if video included]
- Do NOT use: HowTo (deprecated), FAQ (restricted to gov/health)

## Internal Linking Plan
- **Link TO this page from**: [3-5 existing pages with anchor text]
- **Link FROM this page to**: [3-5 target pages with anchor text]
- **Pillar page connection**: [parent topic hub if part of cluster]

## Competitive Differentiators
What will make this content BETTER than current top results:
1. [Unique angle / data / perspective competitors lack]
2. [More comprehensive coverage of subtopic X]
3. [Better multimedia / interactive elements]
4. [More recent data / updated information]
5. [Stronger E-E-A-T signals]

## Meta Tags
- **Title**: [50-60 chars, includes primary keyword]
- **Meta Description**: [150-160 chars, compelling, includes keyword]
- **URL Slug**: [short, descriptive, hyphenated]

## Success Metrics
- **Target position**: [#1-3 / top 5 / page 1]
- **Target traffic**: [X organic sessions/month within Y months]
- **AI citation goal**: [Cited in AI Overviews / Featured Snippet capture]
- **Engagement targets**: [Engagement rate >X%, avg time >Y min]
```

## Brief Quality Checklist

Before delivering a content brief, verify:
- [ ] Word count target is based on competitor analysis (not arbitrary)
- [ ] All PAA questions from SERP are addressed
- [ ] AI Overview citation strategy is included
- [ ] E-E-A-T requirements are specific (not generic)
- [ ] Internal linking plan references real existing pages
- [ ] Schema recommendation matches page type and is not deprecated
- [ ] Competitive differentiators are actionable (not "write better content")
- [ ] Success metrics are measurable and realistic

## Content Brief Scoring

| Category | Weight | Criteria |
|----------|--------|----------|
| SERP Alignment | 25% | Brief matches dominant search intent and format |
| Competitive Coverage | 20% | All table-stakes subtopics included + differentiation |
| E-E-A-T Specification | 20% | Specific, actionable E-E-A-T requirements |
| AI Citation Readiness | 15% | Answer blocks, structured data, citation patterns |
| Technical Completeness | 10% | Keywords, schema, meta tags, internal links |
| Actionability | 10% | Writer can execute without additional research |

## Content Pipeline (Post-Brief Lifecycle)

The brief is step 1 of a 6-stage content pipeline:

### Pipeline Stages
| Stage | Owner | Duration | Deliverable |
|-------|-------|----------|-------------|
| 1. **Brief** | SEO team | 1-2 days | This content brief |
| 2. **Draft** | Writer | 3-7 days | First draft following brief |
| 3. **Review** | SEO + SME | 1-2 days | Fact-check, E-E-A-T verification |
| 4. **Optimize** | SEO team | 1 day | Keyword placement, schema, meta tags |
| 5. **Publish** | Content ops | 1 day | Live on site, submitted to GSC |
| 6. **Monitor** | SEO team | Ongoing | Track performance milestones |

### Post-Publish Monitoring Milestones
| Timeframe | Check | Expected | Alert If |
|-----------|-------|----------|----------|
| Day 1-3 | Indexed in GSC | URL appears in index | Not indexed after 3 days |
| Day 7 | Initial ranking | Appears in top 50 | Not ranking at all |
| Day 14 | Ranking trajectory | Climbing steadily | Stuck or declining |
| Day 30 | Stable position | Top 20 target | Still outside top 50 |
| Day 60 | Target achieved | Top 10 for primary KW | Stagnant — trigger content refresh |

### Content Refresh Frequency
Prevent content decay with proactive refresh scheduling:

| Content Type | Refresh Cycle | What to Update |
|-------------|--------------|----------------|
| News/trending | 30 days | Statistics, developments, links |
| Technology | 90 days | Tools, versions, benchmarks |
| Industry guides | 120 days | Data, trends, examples |
| Evergreen | 180 days | Freshness signals, new sections |
| Reference/glossary | 365 days | Definitions, new terms |

Cross-reference: `seo-monitor` skill for automated content decay detection.

## Output

Generate `CONTENT-BRIEF-[keyword].md` with all sections above filled in.
For batch briefs, generate one file per keyword with consistent formatting.
