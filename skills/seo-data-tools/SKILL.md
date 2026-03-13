---
name: seo-data-tools
description: >
  SEO data platform integration guide covering Google Search Console API,
  GA4 Data API, PageSpeed Insights API v5, CrUX API, and third-party data
  tools (Bright Data SERP, DataForSEO). Provides API usage patterns, data
  analysis methodologies, and reporting automation. Use when user says
  "Search Console", "GSC", "GA4", "analytics", "PageSpeed API", "CrUX",
  "SERP data", "DataForSEO", "Bright Data", or "SEO data".
---

# seo-data-tools — SEO Data Platform Integration

## Google Search Console API (2025-2026)

### Key Capabilities
- **Search Performance API**: Query-level clicks, impressions, CTR, position
- **URL Inspection API**: Real-time index status, crawl info, rich results
- **Sitemaps API**: Submit, delete, list sitemaps programmatically
- **Links API**: Internal and external link reports

### GSC 2025 Updates (December 2025)
| Feature | Description |
|---------|-------------|
| AI-powered config suggestions | GSC recommends fixes based on site patterns |
| Brand vs non-brand filters | Native split in Search Performance |
| Hourly API data granularity | API now supports hourly breakdowns (previously daily) |
| Search Appearance expansion | Web Stories, Video, FAQ, Product filters |
| Recommendations panel | Proactive improvement suggestions |

### Search Performance API Usage
```
POST https://searchconsole.googleapis.com/webmasters/v3/sites/{siteUrl}/searchAnalytics/query

{
  "startDate": "2026-01-01",
  "endDate": "2026-03-01",
  "dimensions": ["query", "page", "device", "country"],
  "dimensionFilterGroups": [{
    "filters": [{
      "dimension": "query",
      "operator": "notContains",
      "expression": "brand-name"
    }]
  }],
  "rowLimit": 25000,
  "dataState": "final"
}
```

### Brand vs Non-Brand Analysis
Split queries into brand (containing brand name/variations) and non-brand to measure:
- **Brand queries**: Brand awareness, navigational intent health
- **Non-brand queries**: SEO effectiveness, content discoverability
- **Ratio benchmark**: Healthy sites have 60-80% non-brand traffic

### URL Inspection API
```
POST https://searchconsole.googleapis.com/v1/urlInspection/index:inspect

{
  "inspectionUrl": "https://example.com/page",
  "siteUrl": "https://example.com/"
}
```

Key fields to check:
- `indexStatusResult.verdict`: PASS / NEUTRAL / FAIL
- `indexStatusResult.coverageState`: "Submitted and indexed" / "Crawled - currently not indexed"
- `mobileUsabilityResult.verdict`: Mobile friendliness status
- `richResultsResult`: Structured data validation

### Index Coverage Report Categories
| Category | Meaning | Action |
|----------|---------|--------|
| **Valid** | Indexed, no issues | Monitor |
| **Valid with warnings** | Indexed but has issues | Review warnings |
| **Error** | Not indexed due to errors | Fix immediately |
| **Excluded** | Intentionally or unintentionally excluded | Verify intent |

Common Excluded reasons:
- "Crawled - currently not indexed" → Content quality issue
- "Discovered - currently not indexed" → Crawl budget issue
- "Duplicate without user-selected canonical" → Canonical conflict
- "Blocked by robots.txt" → Check robots.txt rules
- "Page with redirect" → Verify redirect chain

### Manual Actions & Security
- Check for manual actions: spam, unnatural links, thin content, cloaking
- Security issues: malware, deceptive pages, harmful downloads
- Both require immediate remediation + reconsideration request

---

## Google Analytics 4 (GA4) Data API

### SEO-Specific GA4 Configuration

#### Key Reports for SEO
| Report | Dimensions | Metrics | Purpose |
|--------|-----------|---------|---------|
| Landing Page | `landingPage`, `sessionSource` | sessions, engagementRate, conversions | Top organic entry points |
| Organic Performance | `sessionDefaultChannelGroup` (filter: Organic) | users, sessions, engagementRate | Overall organic health |
| Content Engagement | `pagePath`, `pageTitle` | screenPageViews, averageSessionDuration, scrolls | Content quality signals |
| Geographic | `country`, `city` | sessions, conversions | Local SEO validation |
| Device | `deviceCategory` | sessions, bounceRate, engagementRate | Mobile vs desktop performance |

#### GA4 Data API v1beta
```
POST https://analyticsdata.googleapis.com/v1beta/properties/{propertyId}:runReport

{
  "dateRanges": [{"startDate": "30daysAgo", "endDate": "today"}],
  "dimensions": [
    {"name": "landingPage"},
    {"name": "sessionDefaultChannelGroup"}
  ],
  "metrics": [
    {"name": "sessions"},
    {"name": "engagementRate"},
    {"name": "conversions"}
  ],
  "dimensionFilter": {
    "filter": {
      "fieldName": "sessionDefaultChannelGroup",
      "stringFilter": {"value": "Organic Search"}
    }
  },
  "orderBys": [{"metric": {"metricName": "sessions"}, "desc": true}],
  "limit": 100
}
```

#### Key SEO Metrics in GA4
| Metric | GA4 Name | SEO Relevance |
|--------|----------|---------------|
| Engagement Rate | `engagementRate` | Content quality proxy (replaces bounce rate) |
| Avg Engagement Time | `averageSessionDuration` | Dwell time signal |
| Scroll Depth | `scrolls` (event) | Content consumption depth |
| Conversions | `conversions` | SEO ROI measurement |
| Views per Session | `screenPageViewsPerSession` | Internal linking effectiveness |

#### GA4 + GSC Cross-Analysis
Link GA4 and GSC to trace the full funnel:
1. **GSC**: Query → Impressions → Clicks → CTR → Position
2. **GA4**: Landing Page → Engagement Rate → Pages/Session → Conversion
3. **Combined insight**: Which queries drive engaged traffic that converts?

#### BigQuery Export (Large-Scale Analysis)
- Enable GA4 → BigQuery export for raw event-level data
- SQL queries for: content decay analysis, user journey mapping, conversion attribution
- Cost: ~$5-20/month for most sites

### GA4 SEO Dashboard Template (Looker Studio)
Essential widgets:
1. Organic Sessions trend (30/90/365 days)
2. Top Landing Pages by engagement rate
3. Brand vs non-brand organic traffic (requires GSC link)
4. Device split for organic traffic
5. Conversion funnel from organic entry
6. Content engagement heatmap (engagement rate × pageviews)
7. Geographic organic performance

---

## PageSpeed Insights API v5

### API Endpoint
```
GET https://www.googleapis.com/pagespeedonline/v5/runPagespeed
  ?url=https://example.com
  &strategy=mobile
  &category=performance
  &category=accessibility
  &category=best-practices
  &category=seo
  &key={API_KEY}
```

### Lab Data vs Field Data
| Aspect | Lab Data (Lighthouse) | Field Data (CrUX) |
|--------|----------------------|-------------------|
| Source | Simulated environment | Real users (Chrome) |
| Metrics | LCP, TBT, CLS, SI, FCP | LCP, INP, CLS, FCP, TTFB |
| When to use | Debugging, pre-launch | Ranking signal, trend analysis |
| Availability | Always (any URL) | Only for URLs with sufficient traffic |
| Latency | 10-30s per test | Instant (28-day rolling) |

### Batch Testing Script Pattern
```bash
# Test multiple URLs against PSI API
urls=("https://example.com" "https://example.com/about" "https://example.com/blog")
for url in "${urls[@]}"; do
  curl -s "https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=$url&strategy=mobile&key=$KEY" \
    | jq '{url: .id, performance: .lighthouseResult.categories.performance.score, lcp: .loadingExperience.metrics.LARGEST_CONTENTFUL_PAINT_MS}'
done
```

### Lighthouse CI Integration
```yaml
# .github/workflows/lighthouse-ci.yml
- name: Lighthouse CI
  uses: treosh/lighthouse-ci-action@v12
  with:
    urls: |
      https://example.com/
      https://example.com/about
    budgetPath: ./lighthouse-budget.json
    uploadArtifacts: true
```

### Performance Budget Example
```json
[{
  "path": "/*",
  "timings": [
    {"metric": "largest-contentful-paint", "budget": 2500},
    {"metric": "cumulative-layout-shift", "budget": 0.1},
    {"metric": "total-blocking-time", "budget": 200}
  ],
  "resourceSizes": [
    {"resourceType": "script", "budget": 300},
    {"resourceType": "image", "budget": 500},
    {"resourceType": "total", "budget": 1500}
  ]
}]
```

---

## CrUX API (Chrome User Experience Report)

### API Endpoint
```
POST https://chromeuxreport.googleapis.com/v1/records:queryRecord?key={API_KEY}

{
  "url": "https://example.com/page",
  "formFactor": "PHONE",
  "metrics": [
    "largest_contentful_paint",
    "interaction_to_next_paint",
    "cumulative_layout_shift",
    "experimental_time_to_first_byte"
  ]
}
```

### CrUX vs PSI
- **CrUX**: Field data only, 28-day rolling, real user metrics, includes INP
- **PSI**: Lab + field data, on-demand, simulated metrics
- **CrUX History API** (2024): 25 weekly data points for trend analysis
- **CrUX Vis** (Nov 2025): Replaced old Looker Studio CrUX Dashboard

### LCP Subparts (Feb 2025 CrUX Addition)
CrUX now exposes 4 LCP subparts for targeted optimization:
- TTFB, Resource Load Delay, Resource Load Time, Element Render Delay

---

## Third-Party Data Tools

### Bright Data SERP API
Commercial SERP scraping service. Analysis guidance:

#### SERP Snapshot Analysis
- **SERP feature distribution**: % of queries with AI Overviews, Featured Snippets, PAA, Video, Image packs
- **Position tracking**: Rank position per keyword over time
- **Local SERP variation**: Compare results across geos/devices
- **Competitor SERP share**: Which domains appear most for your target queries

#### SERP Data Processing Pattern
```
Input: SERP JSON snapshots
Analysis:
1. Parse organic results → position, URL, title, snippet
2. Identify SERP features present → AI Overview, Featured Snippet, PAA, Video
3. Calculate domain share of voice → your domain vs competitors
4. Track position changes over time → trending up/down/stable
5. Identify SERP feature opportunities → queries where you rank but don't have the feature
```

### DataForSEO API
Comprehensive SEO data provider. Analysis guidance:

#### Key Endpoints
| Endpoint | Use Case |
|----------|----------|
| SERP API | Real-time SERP results for any keyword/location |
| Keywords Data | Search volume, CPC, competition, trends |
| Backlinks API | Link profile analysis, referring domains |
| On-Page API | Technical SEO crawl data |
| Domain Analytics | Domain authority, traffic estimates |

#### Keyword Difficulty Framework
| Score | Difficulty | Typical Requirements |
|-------|-----------|---------------------|
| 0-20 | Easy | Quality content, basic on-page SEO |
| 21-40 | Moderate | Strong content + some backlinks |
| 41-60 | Hard | Authority content + significant backlinks |
| 61-80 | Very Hard | Domain authority + comprehensive content strategy |
| 81-100 | Extremely Hard | Years of authority building + PR + brand signals |

#### Domain Authority Benchmarks
| DA Range | Typical Site Profile |
|----------|---------------------|
| 0-20 | New sites, personal blogs |
| 21-40 | Established blogs, small businesses |
| 41-60 | Medium businesses, popular niche sites |
| 61-80 | Large companies, major publications |
| 81-100 | Wikipedia, Google, Amazon-tier |

---

## Competitor Data Collection

### Backlink Monitoring via DataForSEO
```
POST https://api.dataforseo.com/v3/backlinks/backlinks/live

{
  "targets": ["competitor1.com", "competitor2.com"],
  "mode": "as_is",
  "filters": ["new_lost_date", ">", "2026-02-01"],
  "order_by": ["rank,asc"],
  "limit": 100
}
```

Key fields: `url_from`, `domain_from`, `domain_from_rank`, `anchor`, `is_new`, `first_seen`

### Competitor Content Monitoring
Detect new competitor pages by diffing their sitemap weekly:

```bash
# Fetch and diff competitor sitemaps
curl -s "https://competitor.com/sitemap.xml" | grep -oP '<loc>\K[^<]+' > sitemap_this_week.txt
diff sitemap_last_week.txt sitemap_this_week.txt | grep "^>" | sed 's/^> //'
# Output: list of new URLs added this week
```

### SERP Competitor Matrix
Track multiple competitors across keyword portfolio:

| Keyword | Your Pos | Comp A | Comp B | Comp C | SERP Features |
|---------|----------|--------|--------|--------|---------------|
| [kw1] | #3 | #1 | #5 | #8 | AIO, PAA |
| [kw2] | #7 | #2 | #1 | #12 | FS, Video |

Build this matrix by querying DataForSEO SERP API or Bright Data for each target keyword, extracting domain positions.

### Competitor Intelligence Automation
| Task | Frequency | API | Output |
|------|-----------|-----|--------|
| New backlinks | Weekly | DataForSEO Backlinks | Prospect list for outreach |
| New content | Weekly | Sitemap diff | Content gap opportunities |
| Ranking changes | Daily | SERP API batch | Position delta matrix |
| SERP feature wins | Weekly | SERP API | Feature opportunity map |
| Technical changes | Monthly | On-Page API | Speed/schema comparison |

Cross-reference: `seo-backlinks` skill for backlink analysis and outreach strategy.
Cross-reference: `seo-monitor` skill for alert configuration.

---

## Data Cross-Referencing Framework

### 4-Source Validation
For reliable SEO insights, cross-reference data from multiple sources:

```
GSC (queries + clicks) ──┐
                         ├── Cross-reference → Validated Insights
GA4 (engagement + conv) ─┤
                         ├── Anomaly detection → Flag discrepancies
PSI/CrUX (performance) ──┤
                         ├── Trend correlation → Cause-effect analysis
SERP data (rankings) ────┘
```

### Common Cross-Analysis Patterns
1. **Traffic drop diagnosis**: GSC impressions stable but clicks down → CTR issue → check title/description. GSC impressions down → ranking drop → check SERP changes
2. **Content quality validation**: GA4 high engagement + GSC rising impressions = content working. GA4 low engagement + GSC stable = content quality issue
3. **Performance impact**: CrUX LCP degradation → check if GA4 engagement dropped simultaneously → quantify performance-revenue impact
4. **Ranking correlation**: SERP position change → correlate with CrUX CWV changes → identify performance-ranking relationship

---

## Scoring

| Category | Weight |
|----------|--------|
| GSC Integration | 30% |
| GA4 Configuration | 25% |
| Performance APIs (PSI + CrUX) | 25% |
| Third-Party Data Utilization | 10% |
| Cross-Source Analysis | 10% |

## Output Format

Generate `SEO-DATA-AUDIT.md` with:
1. **Data Integration Score** (0-100)
2. **GSC Configuration Status** (API access, reports, alerts)
3. **GA4 SEO Setup** (organic tracking, events, conversions)
4. **Performance Monitoring** (PSI/CrUX integration status)
5. **Third-Party Tool Usage** (what's available, what's missing)
6. **Cross-Reference Gaps** (data sources not connected)
7. **Automation Opportunities** (reporting, alerting, CI/CD)
