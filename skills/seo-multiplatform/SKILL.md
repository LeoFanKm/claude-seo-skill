---
name: seo-multiplatform
description: >
  Multi-platform SEO analysis covering TikTok SEO, Visual Search (Google Lens),
  Reddit/Forum SEO, and Video SEO (YouTube). Evaluates cross-platform presence
  and optimization opportunities beyond traditional web search. Use when user
  says "TikTok SEO", "visual search", "Google Lens", "Reddit SEO", "video SEO",
  "YouTube SEO", "multi-platform", or "cross-platform SEO".
---

# Multi-Platform SEO Analysis

## Overview

Traditional SEO focuses on Google web search. Multi-platform SEO optimizes visibility across **all discovery surfaces** where users find content in 2025-2026.

---

## A. TikTok SEO

### Key Statistics
- TikTok is the **most visited website globally** (2025)
- **64% of Gen Z** uses TikTok as a search engine
- TikTok introduced **image ALT text** support (April 2025)

### Ranking Factors (by importance)
1. **Completion rate** — Most important signal; viewers watching to the end
2. **Caption keywords** — TikTok indexes caption text for search
3. **Hashtags** — 3-5 precise hashtags outperform 15+ generic ones
4. **On-screen text** — OCR-indexed, appears in search results
5. **Voice/audio transcription** — Speech is transcribed and indexed
6. **Engagement signals** — Shares > Comments > Likes (weighted order)

### Optimization Checklist
- [ ] First 3 seconds contain a strong hook (question, surprise, promise)
- [ ] Loop-friendly format (ending flows into beginning)
- [ ] 3-5 precise hashtags (mix of broad + niche)
- [ ] Keywords in caption AND on-screen text
- [ ] ALT text on images (April 2025 feature)
- [ ] Cross-link: embed TikTok videos on website
- [ ] Schema: `SameAs` linking TikTok profile from Organization schema

---

## B. Visual Search (Google Lens)

### Key Statistics
- Google Lens: **12-20 billion visual search queries/month** (2025)
- **60% of Gen Z** prefers visual search for product discovery
- **Circle to Search + Gemini 3** (Feb 2026): multi-object simultaneous recognition

### Google Lens Optimization
- [ ] Filename matches content: `red-running-shoe-nike-mens.jpg` not `IMG_20250301.jpg`
- [ ] ALT text matches computer vision interpretation of image
- [ ] Clean backgrounds, minimal text overlay on product images
- [ ] Multiple angles for physical products
- [ ] High resolution ≥800px on longest side
- [ ] Schema: `ImageObject` with `contentUrl`, `caption`, `creator`
- [ ] Google Merchant Center integration for products

### Visual Search Readiness Score
| Signal | Weight |
|--------|--------|
| Descriptive filenames | 25% |
| ALT text alignment with visual content | 25% |
| Image quality/resolution | 20% |
| Schema markup (ImageObject) | 15% |
| Merchant Center presence | 15% |

---

## C. Reddit/Forum SEO

### Key Statistics
- Reddit consistently appears in Google's top results for opinion/comparison queries
- Google values "authentic human discussion" signals (Helpful Content alignment)
- **High volatility**: Reddit visibility dropped Jan 2025, then recovered

### Optimization Strategy
- [ ] Genuine participation in relevant subreddits (not promotional)
- [ ] Comprehensive, well-sourced answers (not one-liners)
- [ ] Link to authoritative sources naturally
- [ ] Build karma and account age for credibility
- [ ] Schema: `DiscussionForumPosting` on owned forum/community pages
- [ ] Monitor brand mentions on Reddit for reputation signals

### For Owned Community/Forum Pages
- [ ] Implement `DiscussionForumPosting` schema
- [ ] Ensure server-side rendering of discussions
- [ ] Add author attribution and timestamps
- [ ] Enable pagination with proper rel=next/prev or infinite scroll with SSR

---

## D. Video SEO (YouTube)

### Key Statistics
- YouTube algorithm shifted to **"sustained satisfaction"** over raw view counts
- Key metrics: average watch duration, return viewer rate, interaction depth
- YouTube Shorts now indexed in Google Search results

### Optimization Checklist
- [ ] Chapters/Key Moments with timestamps in description
- [ ] Closed captions (auto + edited for accuracy)
- [ ] Keywords in title, description first 200 chars, and tags
- [ ] Custom thumbnail (high CTR signal)
- [ ] End screens and cards linking to related content
- [ ] Schema: `VideoObject` with `@id`, `name`, `description`, `thumbnailUrl`, `uploadDate`, `duration`
- [ ] Schema: `SeekToAction` for enabling key moments in search
- [ ] Embed videos on relevant website pages

### YouTube SEO Signals
| Signal | Weight |
|--------|--------|
| Average watch duration | Highest |
| Click-through rate (thumbnail) | High |
| Return viewer rate | High |
| Comments and engagement | Medium |
| Keyword relevance | Medium |
| Channel authority | Medium |

---

## Multi-Platform Presence Score (0-100)

| Category | Weight |
|----------|--------|
| TikTok presence & optimization | 25% |
| Visual Search readiness | 25% |
| Reddit/Forum presence | 20% |
| Video SEO (YouTube) | 30% |

### Scoring by Business Type
| Business Type | Priority Platforms |
|---------------|-------------------|
| E-commerce | Visual Search (40%), TikTok (30%), YouTube (20%), Reddit (10%) |
| SaaS/Tech | YouTube (35%), Reddit (30%), TikTok (15%), Visual Search (20%) |
| Local Service | Google Lens (35%), YouTube (30%), TikTok (25%), Reddit (10%) |
| Publisher | Reddit (30%), YouTube (30%), TikTok (25%), Visual Search (15%) |

---

## Output

Generate multi-platform analysis with:
1. **Multi-Platform Presence Score: XX/100**
2. **Platform breakdown** (TikTok, Visual Search, Reddit, YouTube scores)
3. **Cross-platform synergies** (how platforms reinforce each other)
4. **Priority recommendations** by business type
5. **Quick wins** (1-week improvements)
6. **Schema recommendations** for cross-platform linking
