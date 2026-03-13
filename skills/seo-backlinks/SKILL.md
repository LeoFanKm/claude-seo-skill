---
name: seo-backlinks
description: >
  Backlink profile analysis, competitor link gap discovery, outreach strategy
  generation, internal link optimization, and link quality scoring. Use when
  user says "backlinks", "link building", "outreach", "DR", "domain rating",
  "referring domains", "anchor text", "link gap", "internal links".
---

# seo-backlinks — Backlink Analysis & Outreach Strategy

## Backlink Profile Analysis

### Key Metrics
| Metric | What It Measures | Healthy Range |
|--------|-----------------|---------------|
| **Referring Domains** | Unique linking domains | Growth >5%/month |
| **Domain Rating (DR)** | Site authority (Ahrefs 0-100) | Industry-dependent |
| **Domain Authority (DA)** | Site authority (Moz 0-100) | Industry-dependent |
| **Authority Score (AS)** | Site authority (SEMrush 0-100) | Industry-dependent |
| **Link Velocity** | New links per month | Steady growth, no spikes |
| **Toxic Score** | Harmful link percentage | <5% of total profile |

### Anchor Text Distribution
Ideal distribution to avoid over-optimization penalties:

| Anchor Type | Target % | Example | Risk if Over |
|-------------|----------|---------|-------------|
| **Branded** | 35-45% | "Acme Corp", "acme.com" | Low risk |
| **Naked URL** | 15-25% | "https://acme.com/page" | Low risk |
| **Generic** | 10-15% | "click here", "read more" | Low risk |
| **Partial match** | 10-15% | "best CRM for startups" | Medium risk |
| **Exact match** | 5-10% | "CRM software" | High risk if >15% |
| **LSI/Related** | 5-10% | "customer management tool" | Low risk |

### Link Attribute Distribution
| Attribute | What It Means | Ideal Mix |
|-----------|---------------|-----------|
| **Dofollow** | Passes link equity | 60-80% |
| **Nofollow** | No equity, still valuable for traffic | 15-30% |
| **UGC** | User-generated (forums, comments) | 5-10% |
| **Sponsored** | Paid/affiliate links | <5% |

## Competitor Backlink Discovery

Inspired by automated competitor backlink monitoring workflows.

### Discovery Process
1. **Identify competitors** — 3-5 direct competitors + 2-3 aspirational
2. **Fetch new backlinks** — Weekly lookback window via Backlinks API
3. **Quality filter** — Apply minimum thresholds:
   - DR ≥ 30 (adjustable by industry)
   - Organic traffic ≥ 500/month
   - Relevance score: same industry/topic
   - Exclude known PBNs, link farms, directories
4. **Gap analysis** — Identify domains linking to competitors but not you
5. **Prioritize** — Rank by: authority × relevance × acquisition feasibility

### Competitor Backlink Matrix
```
              | Your Site | Comp A | Comp B | Comp C |
|-------------|-----------|--------|--------|--------|
| Total Refs  |    450    |  1200  |   800  |   600  |
| DR 60+      |     45    |   180  |   120  |    80  |
| Common Refs |     --    |   120  |    95  |    78  |
| Unique Refs |     --    |   280  |   150  |   110  |
| Link Gap    |     --    |   280  |   150  |   110  |
```

### Common Referring Domains
Domains linking to 2+ competitors but not you = highest priority prospects.

## Outreach Strategy Generation

### Strategy Types by Source
| Strategy | Best For | Success Rate | Cost | Time |
|----------|----------|-------------|------|------|
| **Guest Posting** | Authority building | 10-25% | Medium | 2-4 weeks |
| **Resource Page** | Niche directories | 15-30% | Low | 1-2 weeks |
| **Broken Link** | Quick wins | 5-15% | Low | 1 week |
| **Skyscraper** | Competitive niches | 5-10% | High | 4-8 weeks |
| **HARO/Connectively** | Brand mentions | 3-8% | Low | Ongoing |
| **Digital PR** | Brand authority | 2-5% | High | 4-12 weeks |
| **Unlinked Mentions** | Easy wins | 20-40% | Low | 1 week |

### Outreach Email Template Structure
1. **Subject line** — Personalized, reference their content
2. **Opening** — Specific compliment about their work (not generic)
3. **Value proposition** — What's in it for them
4. **The ask** — Clear, specific, low-friction
5. **Social proof** — Brief credibility signal

### Follow-up Cadence
| Attempt | Timing | Approach |
|---------|--------|----------|
| Initial | Day 0 | Full pitch with value prop |
| Follow-up 1 | Day 5 | Brief reminder, add new angle |
| Follow-up 2 | Day 10 | Different value proposition |
| Follow-up 3 | Day 21 | Final attempt, FOMO or new hook |

### Prioritization Formula
```
Priority Score = (DR / 100) × Relevance × (1 / Difficulty)
```
Where: Relevance = 0-1 topic match, Difficulty = 1(easy) to 5(hard)

## Link Quality Scoring

### Single Link Quality Score (0-100)
| Factor | Weight | Scoring |
|--------|--------|---------|
| Source DR/DA | 30% | DR 0-100 mapped directly |
| Topical relevance | 25% | 0=unrelated, 50=adjacent, 100=exact |
| Link placement | 20% | Editorial/body=100, sidebar=40, footer=20 |
| Source traffic | 15% | Log scale: 0=no traffic, 100=10K+ |
| Dofollow status | 10% | Dofollow=100, Nofollow=50, Sponsored=25 |

### Toxic Link Indicators
- Gambling, adult, pharma sites linking without context
- PBN patterns (same IP range, thin content, reciprocal networks)
- Paid link networks (footer-wide, sidebar widgets)
- Redirect chains (301 → 301 → target)
- Foreign language sites with no topical relevance

## Internal Link Analysis

### Orphan Page Detection
Pages with zero internal links pointing to them — invisible to crawlers navigating via links.

### Link Depth Analysis
| Depth | Description | SEO Impact |
|-------|-------------|-----------|
| 1 click | Linked from homepage | Highest crawl priority |
| 2 clicks | Linked from main nav pages | Good visibility |
| 3 clicks | Linked from category/section pages | Moderate |
| 4+ clicks | Deep in site hierarchy | Low — may be under-crawled |

### Internal Link Optimization
- Important pages should have 5+ internal links pointing to them
- Use descriptive anchor text (not "click here")
- Distribute PageRank from high-authority pages to target pages
- Create topic clusters: pillar page ↔ cluster pages with bidirectional links

## Link Building ROI Projection

### By Strategy
| Strategy | Avg Cost/Link | Success Rate | Links/Month | DR Impact |
|----------|--------------|-------------|-------------|-----------|
| Guest Post | $150-500 | 15% | 2-5 | +0.5-1 |
| Broken Link | $50-100 | 10% | 3-8 | +0.3-0.5 |
| HARO | $0-50 | 5% | 1-3 | +0.5-2 |
| Digital PR | $500-2000 | 3% | 1-2 | +1-3 |
| Unlinked Mentions | $0 | 30% | 2-5 | +0.2-0.5 |

### Monthly Target Setting
Based on competitive gap and current growth rate:
- **Aggressive**: Close 50% of competitor gap in 6 months
- **Moderate**: Match competitor link velocity
- **Maintenance**: Preserve current position, focus on quality

## Reference Files

Load on-demand: `references/backlink-metrics.md` for DR/DA/AS cross-reference tables, industry benchmarks, and DataForSEO API endpoint reference.

Cross-reference: `seo-data-tools` skill for third-party API integration details.

## Scoring

| Category | Weight |
|----------|--------|
| Backlink profile health | 25% |
| Competitor link gap | 20% |
| Link quality distribution | 20% |
| Internal link structure | 15% |
| Outreach strategy readiness | 10% |
| Anchor text distribution | 10% |

## Output Format

Generate backlink report with:
1. **Backlink Health Score** (0-100)
2. **Profile Summary** (total links, referring domains, DR, link velocity)
3. **Anchor Text Audit** (distribution vs ideal, over-optimization risk)
4. **Toxic Link Report** (flagged domains with disavow recommendations)
5. **Competitor Gap Analysis** (link opportunities sorted by priority)
6. **Internal Link Map** (orphan pages, depth issues, optimization targets)
7. **Outreach Strategy** (prioritized prospect list with email templates)
8. **ROI Projection** (monthly targets, expected DR growth, timeline)
