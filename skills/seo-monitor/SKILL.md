---
name: seo-monitor
description: >
  SEO monitoring and alerting system. Tracks ranking fluctuations, competitor
  activity, technical health, content performance, and AI search visibility.
  Generates alerts at configurable thresholds. Use when user says "monitor",
  "alert", "watch", "track changes", "SEO dashboard", "weekly digest".
---

# seo-monitor — SEO Monitoring & Alert System

## Ranking Fluctuation Monitoring

### Detection Rules
| Trigger | Severity | Action |
|---------|----------|--------|
| Single keyword ≥5 position drop | 🟡 Medium | Investigate page changes |
| 3+ keywords drop simultaneously | 🟠 High | Check for algorithm update |
| Core keyword exits top 10 | 🟠 High | Priority optimization within 24h |
| Core keyword exits top 20 | 🟡 Medium | Content refresh + link building |
| 10+ keywords improve simultaneously | 🟢 Info | Document what worked |

### Monitoring Frequency Guide
| Keyword Type | Check Frequency | Alert Threshold |
|-------------|----------------|-----------------|
| Brand terms | Daily | Any drop from #1 |
| Core commercial | Every 3 days | ≥3 position change |
| Long-tail targets | Weekly | ≥5 position change |
| New content tracking | Daily for 30 days | Not indexed after 7 days |

### Google Update Correlation
When volatility spikes:
1. Check [Google Search Status Dashboard](https://status.search.google.com/)
2. Cross-reference with industry volatility tools (SEMrush Sensor, Moz MozCast)
3. Identify pattern: site-wide vs topical vs page-level
4. If confirmed update: document affected pages, defer changes 2-4 weeks until stable

## Competitor Activity Monitoring

### Content Monitoring
- **New page detection**: Compare competitor sitemap weekly, flag new URLs
- **Content updates**: Track last-modified dates on competing pages
- **Topic expansion**: Detect when competitors enter new topic areas
- **Publishing velocity**: Track competitor content output rate

### Ranking Monitoring
- **Position changes**: Track competitor positions on your target keywords
- **New keyword entries**: Detect when competitors rank for keywords they previously didn't
- **SERP feature captures**: Monitor when competitors gain/lose featured snippets, PAA

### Technical Monitoring
- **Speed changes**: Detect CWV improvements/degradation
- **Schema additions**: New structured data types deployed
- **Site structure changes**: New sections, navigation changes, URL restructures

### Backlink Monitoring
- **New links**: Weekly check for competitor's newly acquired backlinks
- **Lost links**: Opportunities when competitors lose high-quality links
- **Link velocity comparison**: Your growth rate vs competitors

## Technical Health Monitoring

### Index Coverage Tracking
| Signal | Threshold | Severity |
|--------|-----------|----------|
| Indexed pages drop >10% weekly | 🟠 High | Check robots.txt, noindex, server errors |
| Indexed pages drop >20% | 🔴 Critical | Immediate investigation |
| "Excluded" pages increase >20% | 🟡 Medium | Review exclusion reasons |
| New crawl errors spike | 🟠 High | Fix 5xx, check redirects |

### CWV Degradation Detection
| Metric | Warning | Critical |
|--------|---------|----------|
| LCP | >2.5s (was passing) | >4.0s |
| INP | >200ms (was passing) | >500ms |
| CLS | >0.1 (was passing) | >0.25 |

Trigger re-audit via `seo-performance` when any CWV degrades from "good" to "needs improvement".

### Security Monitoring
- Manual action notifications (GSC)
- Malware injection detection (unexpected scripts, iframes)
- SEO spam injection (hidden text, cloaked links, Japanese keyword hack)
- SSL certificate expiration warnings (30/14/7 day alerts)

## Content Performance Monitoring

### New Content Tracking (Post-Publish)
| Milestone | Check | Expected | Alert If |
|-----------|-------|----------|----------|
| Day 1-3 | Indexed in GSC | Yes | Not indexed after 3 days |
| Day 7 | Initial ranking | Top 50 | Not ranking at all |
| Day 14 | Ranking movement | Climbing | Stuck or declining |
| Day 30 | Stable position | Top 20 | Outside top 50 |
| Day 60 | Target achieved | Top 10 | Stagnant outside top 20 |

### Content Decay Detection
- **Traffic decline**: Organic sessions drop ≥20% for 3 consecutive weeks
- **Ranking erosion**: Position drops ≥5 from peak
- **CTR decline**: Click-through rate drops ≥30% from historical average

### Decay Response Protocol
1. Check if search intent shifted (SERP comparison)
2. Evaluate if competitors published superior content
3. Check for technical issues (speed, mobile, broken elements)
4. Determine refresh strategy: update stats, add sections, restructure, or rewrite

### Top Content Protection
- Identify top 20 pages by organic traffic
- Set tighter monitoring thresholds (any ranking drop ≥2)
- Schedule proactive refreshes before decay (quarterly for evergreen, monthly for trending)

## AI Search Visibility Monitoring

### AI Overviews Tracking
- Monitor target queries for AI Overview presence/absence
- Track whether your content is cited in AI Overviews
- Detect when competitors gain/lose AI citations
- Measure citation share: your citations / total AI Overview appearances

### Brand Mention Monitoring in AI
- Test brand queries across ChatGPT, Perplexity, Gemini
- Track recommendation frequency and sentiment
- Monitor competitor mention frequency for comparison

## Alert Severity Levels

| Level | Icon | Trigger Examples | Response Time |
|-------|------|-----------------|---------------|
| **Critical** | 🔴 | Index drop >20%, manual penalty, security breach | Immediate |
| **High** | 🟠 | Core keyword out of top 10, all CWV failing, major competitor move | 24 hours |
| **Medium** | 🟡 | Single keyword ≥5 drop, content decay start, new competitor entry | 1 week |
| **Info** | 🟢 | Competitor new backlink, new page indexed, minor fluctuation | Weekly review |

## Monitoring Dashboard Template

### Daily View
- Ranking changes (up/down count)
- New crawl errors
- CWV status (pass/fail)
- Alert queue

### Weekly View
- Ranking trend chart (7-day rolling)
- Competitor activity summary
- Content performance table
- Technical health score
- Action items generated

### Monthly View
- KPI trends (traffic, rankings, backlinks, DR)
- Competitor market share shifts
- Content ROI tracking
- Strategy effectiveness review

## Integration Points

Cross-reference with other skills:
- `seo-rank-tracker` — Detailed position data and SOV calculations
- `seo-data-tools` — GSC/GA4/CrUX data extraction
- `seo-backlinks` — Link monitoring data
- `seo-report` — Digest and report generation from monitoring data
- `seo-performance` — CWV measurement when degradation detected

## Output Format

Generate monitoring report with:
1. **Alert Summary** (critical/high/medium/info counts)
2. **Ranking Changes** (top movers up and down)
3. **Competitor Activity** (new content, ranking changes, backlinks)
4. **Technical Health** (index coverage, CWV, errors)
5. **Content Performance** (new content tracking, decay alerts)
6. **AI Visibility** (citation changes, brand mention trends)
7. **Action Items** (prioritized by severity and impact)
