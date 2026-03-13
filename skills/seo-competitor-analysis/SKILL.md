---
name: seo-competitor-analysis
description: >
  Comprehensive SEO competitor analysis covering competitor identification,
  keyword overlap and gap analysis, content strategy reverse-engineering,
  backlink profile comparison, technical SEO benchmarking, and AI search
  visibility comparison. Use when user says "competitor analysis", "competitive
  SEO", "competitor keywords", "competitor audit", "SEO benchmark", or
  "competitive intelligence".
allowed-tools:
  - Read
  - Grep
  - Glob
  - Bash
  - WebFetch
---

# seo-competitor-analysis — SEO Competitive Intelligence

## Analysis Framework

### Step 1: Competitor Identification

#### Competitor Types
| Type | Definition | How to Find |
|------|-----------|------------|
| **Direct competitors** | Same product/service, same market | Business knowledge |
| **Indirect competitors** | Different product, same problem solved | User research |
| **SERP competitors** | Rank for same keywords, any industry | DataForSEO / SERP analysis |

#### SERP Competitor Discovery
1. Take your top 20 target keywords
2. Analyze top 10 results for each
3. Count domain frequency across all SERPs
4. Domains appearing for 5+ of your keywords = SERP competitors
5. Select top 3-5 competitors for deep analysis

#### Competitor Overview Dashboard
| Metric | Your Site | Comp A | Comp B | Comp C |
|--------|----------|--------|--------|--------|
| Domain Rating (DR) | — | — | — | — |
| Est. organic traffic | — | — | — | — |
| Indexed pages | — | — | — | — |
| Domain age | — | — | — | — |
| Referring domains | — | — | — | — |
| Keywords in top 10 | — | — | — | — |

### Step 2: Keyword Competition Analysis

#### Keyword Overlap Matrix
```
              Your Site    Comp A    Comp B    Comp C
Your Site        —          45%       32%       28%
Comp A          45%          —        51%       38%
Comp B          32%         51%        —        42%
Comp C          28%         38%       42%        —
```

#### Gap Analysis Categories
| Category | Definition | Action |
|----------|-----------|--------|
| **Shared keywords** | All competitors rank | Table stakes — must compete |
| **Your unique keywords** | Only you rank | Protect and strengthen |
| **Competitor-only keywords** | They rank, you don't | Evaluate and target |
| **Untapped keywords** | No one ranks well | First-mover advantage |

#### Share of Voice (SOV) Calculation
```
SOV = Σ (estimated_clicks per keyword) / Σ (total_clicks for all tracked keywords) × 100

Where estimated_clicks = search_volume × CTR_for_position
```

Track SOV monthly to measure competitive trajectory.

#### SERP Feature Ownership
| Feature | Your Site | Comp A | Comp B | Comp C |
|---------|----------|--------|--------|--------|
| Featured Snippets | X/Y | — | — | — |
| AI Overview citations | X/Y | — | — | — |
| PAA appearances | X/Y | — | — | — |
| Video carousels | X/Y | — | — | — |
| Image packs | X/Y | — | — | — |

### Step 3: Content Strategy Analysis

#### Content Audit per Competitor
| Element | What to Analyze |
|---------|----------------|
| **Content types** | Blog posts, guides, tools, comparison pages, case studies, videos |
| **Publishing frequency** | Posts per week/month, consistency |
| **Top pages** | Highest-traffic 20 pages (via DataForSEO/SEMrush estimates) |
| **Content depth** | Average word count, comprehensiveness |
| **Content format** | Lists, tables, videos, infographics, interactive elements |
| **E-E-A-T signals** | Author bios, credentials, citations, original research |
| **Content freshness** | Update frequency, publication dates visible |

#### Content Gap Identification
1. Map competitor's content to topic clusters
2. Compare coverage against your site
3. Identify: topics they cover that you don't
4. Assess quality gap: are their pages better even for shared topics?
5. Find differentiation angles: what unique perspective can you offer?

#### Content Strategy Matrix
| Topic | Your Coverage | Comp A | Comp B | Gap Type | Priority |
|-------|-------------|--------|--------|----------|----------|
| [topic] | None | Strong | Medium | Missing | High |
| [topic] | Weak | Strong | Strong | Quality | High |
| [topic] | Strong | None | None | Advantage | Defend |

### Step 4: Technical & Link Analysis

#### Technical SEO Comparison
| Factor | Your Site | Comp A | Comp B | Comp C |
|--------|----------|--------|--------|--------|
| LCP (mobile) | — | — | — | — |
| INP (mobile) | — | — | — | — |
| CLS (mobile) | — | — | — | — |
| HTTPS | — | — | — | — |
| Mobile responsive | — | — | — | — |
| Schema types used | — | — | — | — |
| Site speed score | — | — | — | — |

#### Backlink Profile Comparison
| Metric | Your Site | Comp A | Comp B | Comp C |
|--------|----------|--------|--------|--------|
| Total backlinks | — | — | — | — |
| Referring domains | — | — | — | — |
| DR/DA score | — | — | — | — |
| Link velocity (monthly) | — | — | — | — |
| Dofollow ratio | — | — | — | — |
| Top linking domains | — | — | — | — |

Cross-reference: `seo-backlinks` skill for detailed backlink analysis and link gap discovery.

#### Competitor Site Architecture
- URL structure patterns (flat vs deep hierarchy)
- Internal linking strategy (hub pages, breadcrumbs, related content)
- Navigation structure (mega menu, sidebar, footer links)
- Sitemap organization

#### AI Search Visibility Comparison
| Signal | Your Site | Comp A | Comp B | Comp C |
|--------|----------|--------|--------|--------|
| AI Overview citations | — | — | — | — |
| Brand mention frequency | — | — | — | — |
| llms.txt present | — | — | — | — |
| Structured data coverage | — | — | — | — |
| Answer-first content | — | — | — | — |

Cross-reference: `seo-geo` skill for AI search optimization strategies.

### Step 5: Strategic Recommendations

#### SWOT Analysis (SEO Dimension)
| | Helpful | Harmful |
|--|---------|---------|
| **Internal** | **Strengths**: Your SEO advantages | **Weaknesses**: Your SEO gaps |
| **External** | **Opportunities**: Market gaps to exploit | **Threats**: Competitor moves to watch |

#### Quick Win Opportunities
Criteria for quick wins:
- Competitor weakness + your existing strength
- Low difficulty keywords where competitors rank but you don't
- SERP features competitors haven't captured
- Content topics with thin competitor coverage

#### Differentiation Strategy
| Strategy | When to Use | Example |
|----------|------------|---------|
| **Content depth** | Competitors have thin content | Write the definitive guide |
| **Unique data** | No one has original research | Publish surveys, benchmarks |
| **Format innovation** | All competitors use same format | Interactive tools, calculators |
| **Niche focus** | Competitors are generalists | Specialize in a vertical |
| **Freshness** | Competitor content is outdated | Regular updates, latest data |
| **E-E-A-T superiority** | Weak author signals in niche | Expert authors, credentials |

#### Priority Action Plan
| Priority | Action | Expected Impact | Timeline |
|----------|--------|----------------|----------|
| Critical | [actions blocking performance] | High | This week |
| High | [significant competitive gaps] | High | This month |
| Medium | [optimization opportunities] | Medium | This quarter |
| Low | [nice-to-have improvements] | Low | Backlog |

## Data Sources

### DataForSEO Competitor Endpoints
| Endpoint | Purpose |
|----------|---------|
| `/v3/dataforseo_labs/google/competitors_domain/live` | Discover SERP competitors |
| `/v3/dataforseo_labs/google/domain_intersection/live` | Keyword overlap analysis |
| `/v3/dataforseo_labs/google/domain_rank_overview/live` | Domain metrics overview |
| `/v3/dataforseo_labs/google/ranked_keywords/live` | All keywords a domain ranks for |
| `/v3/backlinks/competitors/live` | Backlink-based competitors |

### Alternative: Manual Analysis
Without API access, use WebFetch + WebSearch to:
1. Fetch competitor pages and analyze content structure
2. Check robots.txt, sitemap.xml for site architecture clues
3. Search `site:competitor.com` to estimate indexed pages
4. Analyze SERP for target keywords to find ranking competitors

## Scoring

| Category | Weight |
|----------|--------|
| Competitor Identification Accuracy | 15% |
| Keyword Gap Analysis | 25% |
| Content Strategy Insights | 25% |
| Technical & Link Analysis | 20% |
| Strategy Actionability | 15% |

## Output Format

Generate `COMPETITOR-ANALYSIS-[domain].md` with:
1. **Competitor Overview** (dashboard with key metrics)
2. **Keyword Gap Analysis** (overlap matrix, missing keywords, SOV)
3. **Content Strategy Comparison** (gaps, quality differences, formats)
4. **Technical Benchmark** (CWV, speed, schema, mobile)
5. **Backlink Comparison** (profile summary, link gap)
6. **AI Search Visibility** (citations, brand mentions, structured data)
7. **SWOT Analysis** (SEO-focused)
8. **Priority Action Plan** (quick wins → strategic → long-term)
