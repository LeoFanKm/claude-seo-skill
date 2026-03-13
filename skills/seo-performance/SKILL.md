---
name: seo-performance
description: >
  Core Web Vitals and page performance analysis. Measures LCP, INP, CLS with
  current thresholds. Checks HTTP/3 adoption, Lighthouse 13.0 scoring, CrUX
  field data, and LCP subpart diagnostics. Use when user says "page speed",
  "performance", "Core Web Vitals", "CWV", "LCP", "INP", "CLS", "HTTP/3".
---

# seo-performance — Core Web Vitals & Page Performance

## Core Web Vitals Thresholds (2026)

| Metric | Good | Needs Improvement | Poor |
|--------|------|-------------------|------|
| **LCP** (Largest Contentful Paint) | ≤2.5s | 2.5s–4.0s | >4.0s |
| **INP** (Interaction to Next Paint) | ≤200ms | 200ms–500ms | >500ms |
| **CLS** (Cumulative Layout Shift) | ≤0.1 | 0.1–0.25 | >0.25 |

**INP replaced FID** on March 12, 2024. FID fully removed September 9, 2024. Never reference FID.

## Key Statistics (2026)

- **77% of mobile pages** now achieve "good" INP (up from 55% in 2022)
- **57.1% desktop / 49.7% mobile** pass all three CWV (Oct 2025)
- **December 2025 core update**: Mobile CWV weighted more heavily in ranking calculations
- CWV evaluated at **75th percentile** of field data — 75% of visits must meet "good"

## HTTP/3 & QUIC Analysis

HTTP/3 reached **35% global adoption** (2025), reducing mobile latency by **30%**.

### Check HTTP/3 Support
```bash
curl -sI --http3 https://example.com | grep -i "HTTP/3"
# Or check via headers:
curl -sI https://example.com | grep -i "alt-svc"
```

### HTTP/3 Scoring
| Status | Score | Recommendation |
|--------|-------|----------------|
| HTTP/3 enabled (Alt-Svc header present) | 100 | Excellent |
| HTTP/2 only | 50 | Enable HTTP/3 at CDN level (Cloudflare: default, AWS CloudFront: opt-in) |
| HTTP/1.1 | 0 | Upgrade immediately — significant performance penalty |

HTTP/3 is NOT a direct ranking factor but improves TTFB and LCP subparts measurably.

## LCP Subpart Diagnostics (Feb 2025 CrUX Addition)

Break down LCP into 4 subparts for targeted optimization:

| Subpart | What It Measures | Target |
|---------|-----------------|--------|
| **TTFB** | Server response time | <800ms |
| **Resource Load Delay** | Time before LCP resource starts loading | Minimize (preload) |
| **Resource Load Time** | Time to download LCP resource | Compress, CDN, modern formats |
| **Element Render Delay** | Time from resource loaded to rendered | Reduce render-blocking CSS/JS |

## Performance Tooling (2025-2026)

- **Lighthouse 13.0** (Oct 2025): Major audit restructuring, updated scoring weights
- **CrUX Vis** (Nov 2025): Replaced old Looker Studio CrUX Dashboard
- **LCP subparts in CrUX** (Feb 2025): TTFB, load delay, load time, render delay now available
- **GSC 2025** (Dec 2025): AI-powered config suggestions, brand vs non-brand filters, hourly API data

## Common Performance Issues

### LCP Issues
- Unoptimized hero images → compress, WebP/AVIF, `<link rel="preload">`
- Render-blocking CSS/JS → defer, async, critical CSS inline
- Slow TTFB >800ms → edge CDN, server-side caching
- Web font loading delay → `font-display: swap`, preload

### INP Issues
- Long JavaScript tasks >50ms → break into smaller chunks
- Heavy event handlers → debounce, requestAnimationFrame
- Excessive DOM >1,500 elements → virtualize lists
- Third-party scripts blocking main thread → async/defer

### CLS Issues
- Images without width/height → always set dimensions or `aspect-ratio`
- Dynamically injected content → reserve space with min-height
- Web fonts FOIT/FOUT → `font-display: optional` or `swap`
- Ads/embeds without reserved space → explicit container sizing

## Scoring

| Category | Weight |
|----------|--------|
| LCP | 35% |
| INP | 30% |
| CLS | 15% |
| HTTP/3 | 10% |
| Resource optimization | 10% |

## PageSpeed Insights API v5

### Quick Test
```bash
curl -s "https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=https://example.com&strategy=mobile&category=performance&category=seo" \
  | jq '{performance: .lighthouseResult.categories.performance.score, seo: .lighthouseResult.categories.seo.score, lcp: .loadingExperience.metrics.LARGEST_CONTENTFUL_PAINT_MS, inp: .loadingExperience.metrics.INTERACTION_TO_NEXT_PAINT, cls: .loadingExperience.metrics.CUMULATIVE_LAYOUT_SHIFT_SCORE}'
```

### Lab Data vs Field Data
| Aspect | Lab (Lighthouse) | Field (CrUX) |
|--------|-----------------|--------------|
| Source | Simulated | Real Chrome users |
| Metrics | LCP, TBT, CLS, SI, FCP | LCP, INP, CLS, FCP, TTFB |
| Use case | Debugging, pre-launch | Ranking signal, trend analysis |
| Availability | Any URL | URLs with sufficient traffic only |

### Lighthouse CI for CI/CD
Set performance budgets in CI pipelines:
- LCP budget: 2500ms
- TBT budget: 200ms (lab proxy for INP)
- CLS budget: 0.1
- Fail build if budgets exceeded

## CrUX API (Field Data)

### Query Real User Metrics
```
POST https://chromeuxreport.googleapis.com/v1/records:queryRecord?key={API_KEY}
{
  "url": "https://example.com/page",
  "formFactor": "PHONE",
  "metrics": ["largest_contentful_paint", "interaction_to_next_paint", "cumulative_layout_shift"]
}
```

### CrUX History API (2024)
- 25 weekly data points for trend analysis
- Detect performance regressions over time
- Correlate CWV changes with ranking changes

### CrUX Vis (Nov 2025)
Replaced old Looker Studio CrUX Dashboard. Provides visual performance trends.

## Reference Files

Load on-demand: `references/cwv-thresholds.md` for detailed thresholds, SPA handling, and measurement methodology.

Cross-reference: `seo-data-tools` skill for comprehensive GSC/GA4/PSI/CrUX integration guidance.

## Output Format

Generate performance report with:
1. **Performance Score** (0-100)
2. **CWV Status** (pass/fail per metric with values)
3. **HTTP/3 Status** (enabled/disabled with Alt-Svc header)
4. **LCP Subpart Breakdown** (identify bottleneck subpart)
5. **PSI Lab vs Field Comparison** (if both available)
6. **CrUX Trend** (if history data available — improving/stable/degrading)
7. **Prioritized Recommendations** (by expected impact)
