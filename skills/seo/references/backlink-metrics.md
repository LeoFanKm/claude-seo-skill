# Backlink Metrics Reference

## Authority Score Cross-Reference

| Range | Ahrefs DR | Moz DA | SEMrush AS | Site Profile |
|-------|-----------|--------|------------|-------------|
| 0-10 | Brand new | New domain | Minimal links | Personal blogs, new sites |
| 11-20 | Starting | Some links | Low activity | Small blogs, local sites |
| 21-30 | Growing | Moderate | Building | Established small businesses |
| 31-40 | Established | Good | Active | Medium businesses, niche leaders |
| 41-50 | Strong | Strong | Significant | Popular niche sites |
| 51-60 | Very strong | Very strong | High | Major niche sites, mid publications |
| 61-70 | Excellent | Excellent | Very high | Large companies, major publications |
| 71-80 | Top tier | Top tier | Top tier | Fortune 500, national media |
| 81-90 | Elite | Elite | Elite | Major news outlets, social platforms |
| 91-100 | Maximum | Maximum | Maximum | Google, Wikipedia, Amazon tier |

**Note**: These scales are NOT directly comparable. DR 50 ≠ DA 50. Use same tool consistently for trend tracking.

## Anchor Text Classification

| Type | Pattern | Example | Natural % |
|------|---------|---------|-----------|
| **Branded** | Contains brand name | "Acme Corp blog" | 35-45% |
| **Naked URL** | Raw URL or partial | "acme.com/page" | 15-25% |
| **Generic** | Non-descriptive | "click here", "this article" | 10-15% |
| **Partial match** | Contains keyword loosely | "best project management tips" | 10-15% |
| **Exact match** | Exact target keyword | "project management software" | 5-10% |
| **LSI/Semantic** | Related terms | "task tracking tool" | 5-10% |
| **Image (no alt)** | Image link without alt | — | <5% |

### Over-Optimization Warning Thresholds
- Exact match anchor >15% → Penguin penalty risk
- Branded <20% → Unnatural link profile
- Single anchor text >10% of total → Manipulation signal

## Toxic Link Scoring

| Score | Risk Level | Indicators |
|-------|-----------|------------|
| 0-30 | Low | Clean profile, reputable source |
| 31-50 | Medium | Some questionable signals (thin content, unrelated) |
| 51-70 | High | Multiple red flags (PBN patterns, link farm, adult/gambling) |
| 71-100 | Critical | Clear spam or manipulation (hacked site, injected links) |

### Toxic Indicators
- Source DR < 10 with 1000+ outgoing links
- Same C-class IP range as other linking sites
- Content is auto-generated or spun
- Site has no organic traffic
- Gambling, adult, pharma content unrelated to target
- Footer-wide or sidebar-wide links across entire domain
- Redirect chain > 2 hops

## Industry Benchmarks (2026)

### Average Referring Domains by Industry
| Industry | Median Refs (Top 10) | Median DR (Top 10) | Link Velocity |
|----------|---------------------|--------------------|--------------|
| **SaaS** | 2,500 | 65 | 50-100/month |
| **E-commerce** | 1,800 | 55 | 30-80/month |
| **Local service** | 200 | 35 | 5-15/month |
| **Publisher/Media** | 5,000 | 75 | 100-500/month |
| **Agency** | 800 | 50 | 20-50/month |
| **Finance** | 3,500 | 70 | 40-120/month |
| **Health** | 2,000 | 60 | 30-80/month |

### Competitive Gap Thresholds
| Gap vs Leader | Difficulty | Timeline to Close |
|--------------|-----------|-------------------|
| <20% fewer refs | Achievable | 3-6 months with active link building |
| 20-50% fewer | Challenging | 6-12 months |
| 50-80% fewer | Very hard | 12-24 months |
| >80% fewer | Consider alternative keywords | — |

## DataForSEO Backlinks API Reference

### Key Endpoints
| Endpoint | Purpose | Rate Limit |
|----------|---------|-----------|
| `/v3/backlinks/backlinks/live` | Get backlinks for target | 2000 results/request |
| `/v3/backlinks/anchors/live` | Anchor text distribution | 1000 results/request |
| `/v3/backlinks/referring_domains/live` | Unique referring domains | 1000 results/request |
| `/v3/backlinks/domain_intersection/live` | Common/unique refs between domains | 20 targets max |
| `/v3/backlinks/competitors/live` | Discover competitors by link overlap | Top 100 |
| `/v3/backlinks/history/live` | Historical backlink counts | Monthly snapshots |

### Common Filters
```json
{
  "filters": [
    ["dofollow", "=", true],
    "and",
    ["domain_from_rank", ">=", 30],
    "and",
    ["is_new", "=", true]
  ]
}
```

### Link Intersection Query
Find domains linking to competitors but not you:
```json
{
  "targets": {
    "1": "competitor1.com",
    "2": "competitor2.com",
    "3": "competitor3.com"
  },
  "exclude_targets": ["yoursite.com"],
  "order_by": ["1.rank,asc"],
  "limit": 100
}
```
