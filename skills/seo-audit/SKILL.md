---
name: seo-audit
description: >
  Full website SEO audit with parallel subagent delegation. Crawls up to 500
  pages, detects business type, delegates to 6 specialists, generates health
  score. Use when user says "audit", "full SEO check", "analyze my site",
  or "website health check".
---

# Full Website SEO Audit

## Process

1. **Fetch homepage** — use `scripts/fetch_page.py` to retrieve HTML
2. **Detect business type** — analyze homepage signals per seo orchestrator
3. **Crawl site** — follow internal links up to 500 pages, respect robots.txt
4. **Delegate to subagents** (if available, otherwise run inline sequentially):
   - `seo-technical` — robots.txt, sitemaps, canonicals, Core Web Vitals, security headers
   - `seo-content` — E-E-A-T, readability, thin content, AI citation readiness
   - `seo-schema` — detection, validation, generation recommendations
   - `seo-sitemap` — structure analysis, quality gates, missing pages
   - `seo-performance` — LCP, INP, CLS measurements
   - `seo-visual` — screenshots, mobile testing, above-fold analysis
5. **Score** — aggregate into SEO Health Score (0-100)
6. **Report** — generate prioritized action plan

## Crawl Configuration

```
Max pages: 500
Respect robots.txt: Yes
Follow redirects: Yes (max 3 hops)
Timeout per page: 30 seconds
Concurrent requests: 5
Delay between requests: 1 second
```

## Output Files

- `FULL-AUDIT-REPORT.md` — Comprehensive findings
- `ACTION-PLAN.md` — Prioritized recommendations (Critical → High → Medium → Low)
- `screenshots/` — Desktop + mobile captures (if Playwright available)

## Scoring Weights

| Category | Weight |
|----------|--------|
| Technical SEO | 25% |
| Content Quality | 25% |
| On-Page SEO | 20% |
| Schema / Structured Data | 10% |
| Performance (CWV) | 10% |
| Images | 5% |
| AI Search Readiness | 5% |

## Report Structure

### Executive Summary
- Overall SEO Health Score (0-100)
- Business type detected
- Top 5 critical issues
- Top 5 quick wins

### Technical SEO
- Crawlability issues
- Indexability problems
- Security concerns
- Core Web Vitals status

### Content Quality
- E-E-A-T assessment
- Thin content pages
- Duplicate content issues
- Readability scores

### On-Page SEO
- Title tag issues
- Meta description problems
- Heading structure
- Internal linking gaps

### Schema & Structured Data
- Current implementation
- Validation errors
- Missing opportunities

### Performance
- LCP, INP, CLS scores
- Resource optimization needs
- Third-party script impact

### Images
- Missing alt text
- Oversized images
- Format recommendations

### AI Search Readiness
- Citability score
- Structural improvements
- Authority signals

## Quick Audit Rules (Core Checklist)

Use these rules for rapid page-level assessment. Each rule has an ID, pass condition, and severity.

### Core SEO (15 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| CS01 | Title tag exists | Present, 30-60 chars | Critical |
| CS02 | Title tag unique | No duplicates across site | High |
| CS03 | Meta description exists | Present, 120-160 chars | High |
| CS04 | H1 tag exists | Exactly one H1 per page | Critical |
| CS05 | H1 contains target keyword | Primary keyword in H1 | High |
| CS06 | Heading hierarchy valid | H1→H2→H3, no skips | Medium |
| CS07 | Canonical tag present | Self-referencing or correct canonical | Critical |
| CS08 | URL is clean | Lowercase, hyphens, no params, ≤75 chars | Medium |
| CS09 | Internal links present | ≥3 internal links per page | High |
| CS10 | Broken internal links | Zero 404s from internal links | Critical |
| CS11 | Open Graph tags | og:title, og:description, og:image present | Medium |
| CS12 | Language declared | `lang` attribute on `<html>` | Medium |
| CS13 | Viewport meta tag | `width=device-width` present | Critical |
| CS14 | No duplicate content | <15% similarity with other pages | High |
| CS15 | Keyword in first 100 words | Primary keyword appears early | Medium |

### Performance (12 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| PF01 | LCP ≤ 2.5s | CrUX p75 ≤ 2500ms | Critical |
| PF02 | INP ≤ 200ms | CrUX p75 ≤ 200ms | Critical |
| PF03 | CLS ≤ 0.1 | CrUX p75 ≤ 0.1 | Critical |
| PF04 | TTFB ≤ 800ms | Server responds in ≤800ms | High |
| PF05 | Total page weight ≤ 1.5MB | Compressed transfer size | High |
| PF06 | JS bundle ≤ 300KB | Compressed JS total | High |
| PF07 | No render-blocking resources | Critical CSS inlined, JS deferred | Medium |
| PF08 | Images lazy-loaded | Below-fold images use loading="lazy" | Medium |
| PF09 | HTTP/2 or HTTP/3 | Protocol upgrade from HTTP/1.1 | Medium |
| PF10 | Compression enabled | gzip or brotli on text resources | High |
| PF11 | Browser caching | Cache-Control headers on static assets | Medium |
| PF12 | No excessive redirects | ≤1 redirect per URL | Medium |

### Links (12 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| LK01 | No broken outbound links | Zero 404/5xx from external links | High |
| LK02 | No orphan pages | Every page has ≥1 internal link to it | High |
| LK03 | Reasonable link depth | All pages ≤3 clicks from homepage | Medium |
| LK04 | No excessive outbound links | ≤100 outbound links per page | Medium |
| LK05 | Anchor text descriptive | No "click here" or empty anchors | Medium |
| LK06 | Nofollow used correctly | UGC/sponsored links marked | Medium |
| LK07 | Sitemap links match live pages | All sitemap URLs return 200 | Critical |
| LK08 | Breadcrumbs present | BreadcrumbList on subpages | Medium |
| LK09 | No redirect chains | Max 1 hop per redirect | High |
| LK10 | Footer/nav links functional | All nav links resolve | Critical |
| LK11 | Pagination correct | rel="next"/"prev" or load-more | Low |
| LK12 | Hreflang reciprocal | Return links present if hreflang used | High |

### Images (10 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| IM01 | Alt text on all images | Non-decorative images have alt | Critical |
| IM02 | Alt text descriptive | 10-125 chars, not "image1.jpg" | High |
| IM03 | Modern format used | WebP or AVIF (not PNG/JPG for photos) | Medium |
| IM04 | Images properly sized | No images wider than container | Medium |
| IM05 | Responsive images | srcset/sizes attributes present | Medium |
| IM06 | File size reasonable | Hero ≤200KB, content ≤100KB, thumb ≤50KB | High |
| IM07 | Explicit dimensions | width/height attributes set (CLS prevention) | High |
| IM08 | No broken images | All img src return 200 | Critical |
| IM09 | Lazy loading below fold | loading="lazy" on non-critical images | Medium |
| IM10 | Image filenames descriptive | "blue-widget.webp" not "IMG_3847.jpg" | Low |

### Security (10 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| SC01 | HTTPS everywhere | No mixed content, valid SSL cert | Critical |
| SC02 | HSTS header | Strict-Transport-Security present | High |
| SC03 | X-Content-Type-Options | nosniff header present | Medium |
| SC04 | X-Frame-Options | DENY or SAMEORIGIN | Medium |
| SC05 | CSP header | Content-Security-Policy present | Medium |
| SC06 | No exposed secrets | No API keys/passwords in source | Critical |
| SC07 | SSL cert valid | Not expired, correct domain | Critical |
| SC08 | HTTP→HTTPS redirect | 301 redirect from HTTP to HTTPS | Critical |
| SC09 | No open directory listing | Directory browsing disabled | High |
| SC10 | Secure cookies | HttpOnly + Secure flags on cookies | Medium |

### AI/GEO Readiness (10 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| AI01 | AI crawlers allowed | GPTBot, ClaudeBot, PerplexityBot not blocked | High |
| AI02 | llms.txt present | /llms.txt exists with structured content | Medium |
| AI03 | Answer-first content | Direct answer in first 200 words | High |
| AI04 | Self-contained answer blocks | 134-167 word blocks for key topics | High |
| AI05 | Question-based headings | H2/H3 match search queries | Medium |
| AI06 | Statistics with sources | Data points cited with attribution | Medium |
| AI07 | Author with credentials | Person schema + bio with expertise | High |
| AI08 | Entity presence | Brand on Wikipedia/Reddit/YouTube | Medium |
| AI09 | SSR for key content | Content visible without JS execution | Critical |
| AI10 | Structured data coverage | Schema on ≥80% of content pages | Medium |

### Content Quality (11 rules)
| ID | Rule | Pass Condition | Severity |
|----|------|---------------|----------|
| CQ01 | No thin pages | ≥300 words for content pages | High |
| CQ02 | Readability appropriate | Flesch Reading Ease 60-70 (general), adjust for audience | Medium |
| CQ03 | Publication date visible | Date published and/or last updated shown | Medium |
| CQ04 | Author attribution | Named author with bio link | High |
| CQ05 | External citations | ≥2 authoritative external sources cited | Medium |
| CQ06 | No keyword stuffing | Primary keyword density 0.5-2.5% | High |
| CQ07 | Unique value proposition | Content not duplicated from elsewhere | Critical |
| CQ08 | Multimedia present | ≥1 image/video per 500 words | Medium |
| CQ09 | Table of contents | Present on pages ≥1500 words | Low |
| CQ10 | No outdated content | Last updated within content type's refresh cycle | Medium |
| CQ11 | Mobile content parity | Same content on mobile and desktop | High |

**Total: 80 core rules** across 7 categories. Use these for rapid assessment; see individual sub-skills for deeper analysis.

## Priority Definitions

- **Critical**: Blocks indexing or causes penalties (fix immediately)
- **High**: Significantly impacts rankings (fix within 1 week)
- **Medium**: Optimization opportunity (fix within 1 month)
- **Low**: Nice to have (backlog)
