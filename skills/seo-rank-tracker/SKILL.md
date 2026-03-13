---
name: seo-rank-tracker
description: >
  Keyword ranking monitoring methodology covering SERP position tracking,
  SERP feature detection (AI Overviews, Featured Snippets, PAA), local vs
  national ranking, competitor rank comparison, and ranking volatility
  analysis. Use when user says "rank tracker", "keyword ranking", "position
  tracking", "SERP monitoring", "ranking changes", or "rank check".
---

# seo-rank-tracker — Keyword Ranking Monitoring

## Ranking Data Sources

### Primary Sources
| Source | Data Type | Pros | Cons |
|--------|----------|------|------|
| **GSC Search Performance** | Avg position (impressions-weighted) | Free, real data, query-level | Averaged, 2-day delay, sampled |
| **CrUX + GSC combined** | Position + performance correlation | Links CWV to rankings | Requires both APIs |
| **Third-party SERP APIs** | Exact position, SERP features | Real-time, geo-specific | Paid, rate-limited |
| **Manual spot checks** | Visual SERP inspection | Accurate, sees full context | Doesn't scale |

### GSC Position Data Caveats
- Position is **impressions-weighted average** — a page ranking #3 for 100 impressions and #50 for 10 impressions shows as ~7.3
- Data is **2 days delayed** (hourly granularity available via API since Dec 2025)
- Positions are **sampled** for high-volume queries
- Filter by `device` to see mobile vs desktop separately
- Filter by `country` for geo-specific rankings

## SERP Feature Tracking (2026)

### Features to Monitor
| Feature | Prevalence | Impact on Organic CTR |
|---------|-----------|----------------------|
| **AI Overviews** | 48% of queries | -34 to -46% CTR for positions below |
| **Featured Snippets** | ~12% of queries | +2x CTR if captured (Position 0) |
| **People Also Ask (PAA)** | ~65% of queries | Moderate — clicks distributed |
| **Video Carousel** | ~20% of queries | High for how-to/tutorial content |
| **Image Pack** | ~30% of queries | Moderate — drives image search traffic |
| **Local Pack** | ~35% of local queries | Very high — dominates local intent |
| **Knowledge Panel** | ~20% of brand queries | Builds trust, reduces clicks to site |
| **Shopping Results** | ~25% of product queries | High for e-commerce |
| **AI Mode (Zero Links)** | Growing (180+ countries) | 100% — no organic results shown |

### AI Overview Impact Analysis
When AI Overviews appear for your target queries:
1. **Cited in AIO**: Position preserved, CTR may increase (trusted source signal)
2. **Not cited in AIO**: CTR drops 34-46% even if ranking #1
3. **Strategy**: Optimize for citation (see `seo-geo` skill) rather than just ranking

## Ranking Monitoring Framework

### Keyword Categories
| Category | Tracking Frequency | Alert Threshold |
|----------|-------------------|-----------------|
| **Money keywords** (high-intent, transactional) | Daily | ±3 positions |
| **Brand keywords** | Daily | ±5 positions |
| **Content keywords** (informational) | Weekly | ±5 positions |
| **Long-tail keywords** | Monthly | ±10 positions |
| **Competitor brand keywords** | Weekly | Any appearance/disappearance |

### Position Buckets Analysis
| Bucket | Interpretation | Action |
|--------|---------------|--------|
| **#1-3** | Dominant positions | Defend — monitor for competitors rising |
| **#4-10** | First page | Optimize — quick wins available |
| **#11-20** | Second page | Push to page 1 — content enhancement + links |
| **#21-50** | Discoverable | Evaluate — worth investing or pivot keyword? |
| **#50+** | Not competitive | Reassess — new content or abandon keyword |

### Striking Distance Analysis
Keywords ranking #4-20 are "striking distance" — most ROI per effort:
1. Filter GSC data for avg position 4-20
2. Sort by impressions (high impressions = high opportunity)
3. Analyze current page quality vs top 3 competitors
4. Prioritize by: `opportunity = impressions × (target_ctr - current_ctr)`

## Local vs National Ranking

### Local Ranking Factors
- Google Business Profile optimization (completeness, reviews, photos)
- NAP consistency (Name, Address, Phone across directories)
- Local content and landing pages
- Proximity to searcher (uncontrollable but measurable)
- Local link building (chambers of commerce, local media)

### Geo-Specific Tracking
Track rankings for key locations separately:
```
Keyword: "plumber near me"
├── New York, NY: #3 (Local Pack: #1)
├── Los Angeles, CA: #7 (Local Pack: not listed)
├── Chicago, IL: #12 (Local Pack: #3)
└── National average: #8
```

Use geo-targeted SERP APIs (Bright Data, DataForSEO) for location-specific data.

## Competitor Rank Comparison

### Share of Voice (SOV) Calculation
```
SOV = Σ (estimated_clicks per keyword) / Σ (total_clicks for all tracked keywords) × 100
```

Where estimated_clicks = search_volume × CTR_for_position

### Competitor Monitoring Checklist
- [ ] Track same keywords for top 5 competitors
- [ ] Compare SOV trends monthly
- [ ] Detect new competitor pages targeting your keywords
- [ ] Monitor competitor SERP feature wins/losses
- [ ] Alert when competitor enters your top-3 keywords

### Competitive Position Matrix
| Your Rank vs Competitor | Strategy |
|------------------------|----------|
| You #1-3, them #4+ | **Defend**: Monitor, maintain content freshness |
| You #4-10, them #1-3 | **Attack**: Analyze their page, improve yours |
| Both #1-3 | **Differentiate**: Unique angle, better UX, SERP feature targeting |
| Both #11+ | **Reassess**: Is this keyword worth competing for? |

## Ranking Volatility Analysis

### Google Update Detection
- Track average position across all keywords daily
- **Normal fluctuation**: ±2-3 positions day-to-day
- **Potential update**: ±5+ positions across multiple keywords simultaneously
- Cross-reference with known Google update dates (MozCast, Semrush Sensor)

### Volatility Scoring
| Volatility Level | Daily Position Change | Likely Cause |
|----------------|-----------------------|-------------|
| **Low** (0-2) | ±1-2 positions | Normal SERP movement |
| **Moderate** (3-5) | ±3-5 positions | Algorithm refinement or competitor changes |
| **High** (6-10) | ±6-10 positions | Google update or significant site change |
| **Extreme** (10+) | ±10+ positions | Major algorithm update or penalty |

### Recovery Playbook
If rankings drop significantly:
1. **Check GSC** for manual actions or security issues
2. **Check timing** against known Google updates
3. **Analyze pattern**: All keywords affected → site-wide issue. Specific cluster → topical issue
4. **Compare content** against new top-ranking pages — what changed?
5. **Review technical**: Any recent site changes? (migration, redesign, server issues)
6. **Cross-reference CrUX**: Did CWV degrade simultaneously?

## GSC Cross-Validation

### Data Reconciliation
Compare rank tracker data with GSC:
- Rank tracker shows **exact position** for a single geo/device
- GSC shows **average position** across all impressions
- Discrepancies are normal — investigate only when directionally different (rank tracker says #3, GSC says #25)

### Anomaly Detection Rules
| Signal | Trigger | Investigation |
|--------|---------|--------------|
| Position drop + impression increase | Ranking dropped but query volume grew | Seasonal trend masking decline |
| Position stable + click decrease | Same rank but fewer clicks | SERP feature stealing clicks (AI Overview?) |
| Position improvement + traffic decrease | Higher rank, less traffic | Search volume declining for keyword |
| Sudden 0 impressions | Complete disappearance | De-indexing, canonical issue, or robots.txt block |

---

## Automated Monitoring Integration

### Monitoring Frequency Configuration
| Keyword Type | Check Frequency | Data Source | Alert Channel |
|-------------|----------------|-------------|---------------|
| Brand terms | Daily | GSC API (hourly since Dec 2025) | Slack immediate |
| Core commercial | Every 3 days | GSC API + SERP API validation | Slack + email digest |
| Content keywords | Weekly | GSC API batch | Weekly digest |
| Long-tail | Weekly | GSC API batch | Weekly digest |
| New content | Daily for 30 days | GSC URL Inspection API | Slack if not indexed by day 3 |

### Alert Rule Templates
```
Rule: Core Keyword Drop
  Trigger: position drops ≥5 from 7-day average
  Severity: HIGH
  Action: Investigate → check competitor changes → check technical issues

Rule: Batch Drop
  Trigger: 3+ tracked keywords drop simultaneously
  Severity: HIGH
  Action: Check Google update timeline → compare with SEMrush Sensor

Rule: SERP Feature Loss
  Trigger: Lost Featured Snippet or AI Overview citation
  Severity: MEDIUM
  Action: Compare content with new feature holder → update content

Rule: Competitor Entry
  Trigger: New competitor enters top 3 for core keyword
  Severity: MEDIUM
  Action: Analyze competitor page → identify advantages → plan response
```

### Notification Templates

#### Slack Alert Format
```
🔴 [HIGH] Ranking Alert — {domain}
Keyword: "{keyword}"
Position: {old_pos} → {new_pos} (↓{drop})
URL: {page_url}
Possible cause: {analysis}
Action: {recommendation}
```

#### Weekly Digest Format
```
📊 Weekly Rank Report — {domain} — Week of {date}
Summary: {total_tracked} keywords | ↑{improved} | ↓{declined} | →{stable}
Top Movers: [table of top 5 up/down]
Alerts Triggered: {count} ({critical}/{high}/{medium})
SOV Change: {your_sov}% (was {last_week}%)
Action Items: [prioritized list]
```

Cross-reference: `seo-monitor` skill for comprehensive monitoring beyond rankings.
Cross-reference: `seo-report` skill for full report generation.

## Scoring

| Category | Weight |
|----------|--------|
| Keyword Coverage | 25% |
| Tracking Infrastructure | 20% |
| SERP Feature Monitoring | 20% |
| Competitor Tracking | 15% |
| Alerting & Reporting | 10% |
| Data Cross-Validation | 10% |

## Output Format

Generate `RANK-TRACKING-REPORT.md` with:
1. **Ranking Health Score** (0-100)
2. **Position Distribution** (buckets: #1-3, #4-10, #11-20, #21-50, #50+)
3. **Striking Distance Opportunities** (keywords #4-20 sorted by opportunity)
4. **SERP Feature Status** (which features you own vs competitors)
5. **Share of Voice** (your SOV vs top competitors)
6. **Volatility Analysis** (recent ranking stability)
7. **Recommendations** (prioritized by expected traffic impact)
