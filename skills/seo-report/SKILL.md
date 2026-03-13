---
name: seo-report
description: >
  SEO reporting and analytics dashboard generation. Creates weekly digests,
  monthly performance reports, quarterly strategy reviews, and real-time
  dashboard templates. Use when user says "SEO report", "weekly digest",
  "monthly report", "dashboard", "SEO metrics", "performance summary".
---

# seo-report — SEO Reporting & Insights

## Report Types

### A. Weekly Digest

Lightweight summary for staying on top of SEO performance.

#### Template Structure
```markdown
# SEO Weekly Digest — [Date Range]

## Quick Stats
| Metric | This Week | Last Week | Change |
|--------|-----------|-----------|--------|
| Organic Sessions | | | ↑/↓ % |
| Avg Position | | | ↑/↓ |
| Keywords in Top 10 | | | +/- |
| New Backlinks | | | +/- |
| Pages Indexed | | | +/- |

## Ranking Changes
### Top 5 Climbers 📈
| Keyword | Was | Now | Change | URL |
### Top 5 Decliners 📉
| Keyword | Was | Now | Change | URL |

## Competitor Activity
- [Competitor A]: [summary of notable changes]
- [Competitor B]: [summary of notable changes]

## New Content Performance
| Title | Published | Indexed | Position | Impressions |

## Technical Issues
- [List any new crawl errors, CWV changes, or security alerts]

## Action Items This Week
1. [ ] [Priority action with assigned owner]
2. [ ] [Second priority action]
3. [ ] [Third priority action]
```

### B. Monthly Report

Comprehensive performance analysis with trends and ROI.

#### Template Structure
```markdown
# SEO Monthly Report — [Month Year]

## Executive Summary
[2-3 sentences on overall performance, key wins, concerns]

## KPI Dashboard
| KPI | Target | Actual | MoM | YoY | Status |
|-----|--------|--------|-----|-----|--------|
| Organic Sessions | | | % | % | 🟢/🟡/🔴 |
| Organic Revenue | | | % | % | 🟢/🟡/🔴 |
| Keywords Top 3 | | | +/- | +/- | 🟢/🟡/🔴 |
| Keywords Top 10 | | | +/- | +/- | 🟢/🟡/🔴 |
| Referring Domains | | | +/- | +/- | 🟢/🟡/🔴 |
| Domain Rating | | | +/- | — | 🟢/🟡/🔴 |
| SEO Health Score | | | +/- | +/- | 🟢/🟡/🔴 |

## Organic Traffic Analysis
- Session trend chart (daily, 30-day)
- Source/device breakdown
- Top landing pages by traffic
- New vs returning user ratio

## Keyword Performance
- Position distribution: #1-3 / #4-10 / #11-20 / #21-50 / #50+
- Striking distance opportunities
- New keyword entries
- Lost keywords

## Content Performance
| Content Piece | Sessions | Avg Position | CTR | Conversions |
- Top 10 performers
- Underperforming content (high impressions, low CTR)
- Content ROI: published this month vs traffic generated

## Backlink Report
- New referring domains acquired
- Lost referring domains
- DR/DA trend
- Notable high-quality links gained

## Competitor Analysis
| Metric | You | Comp A | Comp B | Comp C |
- Share of Voice comparison
- Notable competitor moves

## Technical SEO Health
- CWV status (pass/fail per metric)
- Index coverage trend
- Crawl error summary
- Page speed trends

## Recommendations
### Priority 1 (This Week)
### Priority 2 (This Month)
### Priority 3 (Next Month)
```

### C. Quarterly Strategy Review

High-level strategic assessment for leadership.

#### Template Structure
```markdown
# SEO Quarterly Review — Q[N] [Year]

## Goal Achievement
| Goal | Target | Actual | Status |
| Organic traffic growth | +20% | | |
| Top 10 keywords | 150 | | |
| DR improvement | +5 | | |

## Strategy Effectiveness
- What worked: [strategies that drove results]
- What didn't: [strategies that underperformed]
- External factors: [algorithm updates, market shifts]

## Market Position
- Industry benchmark comparison
- Competitive landscape shifts
- Emerging opportunities

## Investment Summary
| Category | Budget | Spent | ROI |
|----------|--------|-------|-----|
| Content production | | | |
| Link building | | | |
| Technical improvements | | | |
| Tools & platforms | | | |

## Next Quarter Strategy
- Priority initiatives
- Resource requirements
- Expected outcomes
- Risk factors
```

### D. Dashboard Template (Looker Studio)

Real-time SEO dashboard configuration guide.

#### 7 Core Widgets
| Widget | Data Source | Visualization | Refresh |
|--------|-----------|---------------|---------|
| Organic Traffic Trend | GA4 | Line chart (30/90/365 day) | Daily |
| Keyword Position Distribution | GSC | Stacked bar chart | Weekly |
| CWV Status | CrUX | Gauge chart (3 metrics) | Weekly |
| Content Performance | GA4 + GSC | Scatter plot (impressions vs clicks) | Daily |
| Backlink Growth | DataForSEO/Ahrefs | Line chart + area | Weekly |
| Competitor SOV | SERP API | Pie chart | Weekly |
| Alert Counter | Monitoring system | Scorecard (4 severity levels) | Real-time |

#### Data Source Configuration
| Source | Connection | Refresh Rate |
|--------|-----------|-------------|
| Google Search Console | GSC connector (native) | Daily |
| Google Analytics 4 | GA4 connector (native) | Daily |
| CrUX | CrUX BigQuery dataset | Weekly |
| PageSpeed Insights | Custom API connector | On-demand |
| Backlink data | DataForSEO API → Sheets | Weekly |
| SERP data | Bright Data → Sheets | Weekly |

## Data Source Mapping

### Which source for which report section
| Report Section | Primary Source | Secondary Source | Frequency |
|---------------|---------------|-----------------|-----------|
| Traffic overview | GA4 | GSC (impressions) | Daily |
| Keyword positions | GSC | SERP API (validation) | Weekly |
| Content performance | GA4 + GSC (join) | — | Weekly |
| Backlink metrics | DataForSEO | GSC Links Report | Weekly |
| CWV performance | CrUX (field) | PSI (lab) | Weekly |
| Competitor data | SERP API | Bright Data | Weekly |
| Revenue/conversions | GA4 | CRM data | Monthly |

### Cross-Source Reconciliation
When data conflicts:
- **Traffic**: GA4 is source of truth (session-based)
- **Rankings**: GSC is primary (impressions-weighted), SERP API for spot-check
- **CWV**: CrUX field data for ranking (75th percentile), PSI lab for debugging
- **Backlinks**: Cross-validate DataForSEO with GSC Links Report

## Automation Opportunities

### Report Scheduling
| Report | Audience | Delivery | Format |
|--------|---------|----------|--------|
| Weekly digest | SEO team | Monday AM | Markdown/Slack |
| Monthly report | Marketing leadership | 1st of month | PDF/Slides |
| Quarterly review | Executive team | Quarter start | Presentation |
| Alert notifications | SEO team | Real-time | Slack/Email |

### Automated Data Collection
```
Schedule:
  Daily: GSC Search Performance API → rankings DB
  Daily: GA4 Data API → traffic DB
  Weekly: DataForSEO Backlinks → backlinks DB
  Weekly: CrUX API → performance DB
  Weekly: Competitor sitemap diff → changes DB
```

## Report Quality Checklist

- [ ] All metrics have source attribution
- [ ] Period-over-period comparisons included
- [ ] Competitor context provided
- [ ] Actionable recommendations (not just data)
- [ ] Each recommendation has priority and owner
- [ ] Charts have labeled axes and date ranges
- [ ] Executive summary leads with business impact

## Output Format

Generate requested report type with:
1. **Report Header** (type, date range, prepared for)
2. **Executive Summary** (3-5 key takeaways)
3. **Data Tables** (formatted with trends and RAG status)
4. **Visualizations** (described for chart implementation)
5. **Recommendations** (prioritized with impact estimates)
6. **Appendix** (methodology, data sources, definitions)
