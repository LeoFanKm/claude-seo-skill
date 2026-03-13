---
name: seo-keyword-research
description: >
  Comprehensive keyword research methodology covering seed keyword expansion,
  search volume and difficulty analysis, competitor keyword gap discovery,
  topic clustering, search intent classification, and keyword prioritization.
  Use when user says "keyword research", "find keywords", "keyword analysis",
  "keyword strategy", "topic clusters", or "keyword gap".
allowed-tools:
  - Read
  - Grep
  - Glob
  - Bash
  - WebFetch
---

# seo-keyword-research — Keyword Research & Strategy

## Research Process

### Step 1: Seed Keyword Expansion
Start with broad seed terms and expand systematically:

#### Seed Sources
| Source | Method | Example |
|--------|--------|---------|
| **Product features** | List core features/benefits | "project management", "task tracking" |
| **User pain points** | Common problems your product solves | "team collaboration issues", "missed deadlines" |
| **Competitor brands** | Competitor product names | "asana alternative", "trello vs" |
| **Industry terms** | Domain-specific vocabulary | "agile methodology", "sprint planning" |
| **Question patterns** | what/how/why/when/where + topic | "how to manage remote teams" |

#### Expansion Techniques
1. **Semantic expansion**: Synonyms, related terms, variations
2. **Modifier expansion**: best/top/free/cheap/vs/alternative + keyword
3. **Long-tail generation**: 3-5 word phrases with specific intent
4. **PAA mining**: Extract "People Also Ask" questions from SERP
5. **Autocomplete harvesting**: Google/Bing/YouTube autocomplete suggestions
6. **Forum mining**: Reddit, Quora, industry forums for real user language

### Step 2: Keyword Metrics Analysis

#### Core Metrics
| Metric | Source | What It Tells You |
|--------|--------|-------------------|
| **Monthly search volume** | GSC, DataForSEO, SEMrush | Demand level |
| **Keyword difficulty (KD)** | DataForSEO (0-100) | Competition intensity |
| **CPC** | Google Ads, DataForSEO | Commercial value |
| **Search trend** | Google Trends, DataForSEO | Seasonality, growth |
| **SERP features** | SERP API analysis | Opportunity type |
| **Click-through rate** | GSC (existing keywords) | Actual traffic potential |

#### Keyword Difficulty Interpretation
| KD Score | Difficulty | Typical Requirements |
|----------|-----------|---------------------|
| 0-20 | Easy | Quality content, basic on-page SEO |
| 21-40 | Moderate | Strong content + some backlinks (10-30 referring domains) |
| 41-60 | Hard | Authority content + significant backlinks (30-100 RDs) |
| 61-80 | Very Hard | Domain authority + comprehensive content strategy (100+ RDs) |
| 81-100 | Extremely Hard | Years of authority building + PR + brand signals |

Cross-reference: `references/keyword-difficulty.md` for industry benchmarks.

#### Search Volume Caveats
- Volume is a **range estimate**, not an exact number
- Seasonal keywords: always check 12-month trend (e.g., "tax software" peaks Jan-Apr)
- Zero-volume keywords may still drive valuable traffic (emerging terms, long-tail)
- Volume ≠ traffic — CTR varies by SERP features and position

### Step 3: Search Intent Classification

| Intent | Signals | Content Type | Conversion Proximity |
|--------|---------|-------------|---------------------|
| **Informational** | what, how, why, guide, tutorial | Blog post, guide, video | Low (awareness) |
| **Commercial** | best, top, review, comparison, vs | Comparison page, review | Medium (consideration) |
| **Transactional** | buy, price, discount, coupon, order | Product page, pricing | High (decision) |
| **Navigational** | [brand name], login, support | Homepage, support page | Varies |

#### Intent Validation
Always verify intent by checking actual SERP results:
- If top 10 results are all blog posts → informational intent
- If top 10 are product pages → transactional intent
- Mixed results → blended intent (target the dominant format)

### Step 4: Competitor Keyword Gap Analysis

#### Gap Types
| Type | Definition | Action |
|------|-----------|--------|
| **Missing keywords** | Competitor ranks, you don't | Create new content |
| **Weak keywords** | Both rank, competitor higher | Improve existing content |
| **Strong keywords** | You rank higher | Defend and optimize |
| **Unique keywords** | Only you rank | Protect competitive advantage |

#### Gap Analysis Process
1. Identify 3-5 SERP competitors (domains ranking for your target keywords)
2. Extract their ranking keywords (DataForSEO Domain Keywords API)
3. Cross-reference with your GSC keyword data
4. Filter: Volume ≥ 100, KD ≤ your_domain_DR + 10, relevant to business
5. Prioritize by: `Opportunity = Volume × (1 - your_visibility) × relevance`

### Step 5: Topic Clustering & Prioritization

#### Topic Cluster Model
```
Pillar Page: "Project Management" (high volume, broad)
├── Cluster: "Agile Project Management"
│   ├── "scrum vs kanban" (commercial)
│   ├── "how to run a sprint planning meeting" (informational)
│   └── "agile project management tools" (commercial)
├── Cluster: "Remote Team Management"
│   ├── "remote team communication tools" (commercial)
│   ├── "how to manage remote employees" (informational)
│   └── "remote work best practices" (informational)
└── Cluster: "Project Management Software"
    ├── "best project management software 2026" (commercial)
    ├── "free project management tools" (commercial)
    └── "asana vs monday vs clickup" (commercial)
```

#### Prioritization Formula
```
Priority Score = (Volume × CTR_potential × Business_value) / (Difficulty + 1)

Where:
- CTR_potential = estimated CTR for target position (pos 1: 0.30, pos 3: 0.12, pos 5: 0.06)
- Business_value = 1 (informational), 2 (commercial), 3 (transactional)
- Difficulty = KD score (0-100)
```

#### Priority Buckets
| Bucket | Criteria | Timeline |
|--------|----------|----------|
| **Quick wins** | KD < 30, Volume > 500, you rank #11-30 | This month |
| **Strategic targets** | KD 30-60, Volume > 1000, high business value | Next quarter |
| **Long-term plays** | KD > 60, Volume > 5000 | 6-12 months |
| **Defensive** | Brand keywords, existing #1-3 rankings | Ongoing |

### Step 6: Keyword Strategy Output

#### Keyword Map Template
| URL | Primary KW | Secondary KWs | LSI Terms | Intent | Volume | KD | Priority |
|-----|-----------|---------------|-----------|--------|--------|-----|----------|
| /blog/topic-a | [main keyword] | [2-3 secondary] | [5-10 LSI] | Info | 2,400 | 35 | High |
| /product/feature | [main keyword] | [2-3 secondary] | [5-10 LSI] | Trans | 1,200 | 55 | Strategic |

#### Content Calendar Alignment
Map keywords to content calendar considering:
- **Seasonality**: Schedule content 2-3 months before peak season
- **Trending topics**: Fast-track emerging keywords (zero-volume → rising)
- **Competitor gaps**: Prioritize topics where competitors are weak
- **Content clusters**: Publish cluster articles before pillar pages

#### Quick Win Identification
Filter GSC data for immediate opportunities:
1. Keywords ranking #4-20 with high impressions (striking distance)
2. Keywords with high impressions but low CTR (title/description optimization)
3. Keywords ranking #1-3 without Featured Snippet (snippet capture opportunity)

## Data Sources

### Primary: Google Search Console
- Real click/impression data for existing keywords
- Brand vs non-brand segmentation
- Device and geo filtering
- 16 months of historical data

### Secondary: DataForSEO Keywords API
```
POST https://api.dataforseo.com/v3/keywords_data/google_ads/search_volume/live

{
  "keywords": ["project management", "task tracking", "team collaboration"],
  "location_code": 2840,
  "language_code": "en",
  "date_from": "2025-01-01",
  "date_to": "2026-03-01"
}
```

Key endpoints:
| Endpoint | Purpose |
|----------|---------|
| `/v3/keywords_data/google_ads/search_volume/live` | Volume + CPC + competition |
| `/v3/keywords_data/google_ads/keywords_for_site/live` | Keywords for a domain |
| `/v3/dataforseo_labs/google/keyword_suggestions/live` | Related keyword suggestions |
| `/v3/dataforseo_labs/google/keyword_ideas/live` | Seed → expanded keyword list |
| `/v3/dataforseo_labs/google/keywords_for_categories/live` | Category-based keywords |
| `/v3/dataforseo_labs/google/domain_intersection/live` | Competitor keyword overlap |

### Tertiary: SERP Analysis
Cross-reference with `seo-rank-tracker` for SERP feature data and `seo-content-brief` for content planning.

## Scoring

| Category | Weight |
|----------|--------|
| Seed Keyword Coverage | 20% |
| Search Intent Accuracy | 20% |
| Competitor Gap Identification | 20% |
| Topic Cluster Organization | 15% |
| Prioritization Quality | 15% |
| Strategy Actionability | 10% |

## Output Format

Generate `KEYWORD-RESEARCH-[topic].md` with:
1. **Keyword Universe** (total keywords discovered, by intent type)
2. **Top 50 Keywords** (sorted by priority score with all metrics)
3. **Topic Clusters** (visual hierarchy with pillar → cluster → content)
4. **Competitor Gap Matrix** (your keywords vs top 3 competitors)
5. **Quick Wins** (immediate opportunities from existing rankings)
6. **Content Calendar** (recommended publishing sequence)
7. **Keyword Map** (URL-to-keyword assignments)
