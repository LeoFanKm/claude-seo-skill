---
name: seo-visual
description: >
  Visual analysis, screenshot capture, mobile rendering testing, and Visual
  Search readiness assessment. Uses Playwright for multi-viewport screenshots
  and above-the-fold analysis. Checks Google Lens optimization and image
  discoverability. Use when user says "visual", "screenshot", "mobile rendering",
  "above the fold", "Visual Search", "Google Lens".
---

# seo-visual — Visual Analysis & Visual Search Readiness

## Multi-Viewport Screenshot Capture

| Device | Width | Height | Scale |
|--------|-------|--------|-------|
| Desktop | 1920 | 1080 | 1x |
| Laptop | 1366 | 768 | 1x |
| Tablet | 768 | 1024 | 2x |
| Mobile | 375 | 812 | 2x |

Use `scripts/capture_screenshot.py` for automated capture.

## Above-the-Fold Analysis

Check without scrolling:
- **H1 visibility**: Primary heading visible immediately
- **CTA visibility**: Main call-to-action button above fold
- **Hero content**: Key image/video loading properly
- **No layout shifts**: Page stable on initial load

### CTA Detection Selectors
```css
/* Common CTA patterns */
a[href*="signup"], a[href*="contact"], a[href*="demo"],
button:has-text("Get Started"), button:has-text("Try Free"),
button:has-text("Sign Up"), button:has-text("Learn More"),
button:has-text("Shop Now"), button:has-text("Download"),
[class*="cta"], [class*="hero-button"]
```

## Mobile Responsiveness Checks

- **Viewport meta**: `<meta name="viewport" content="width=device-width, initial-scale=1">`
- **Touch targets**: Minimum 48x48px (Google recommendation)
- **No horizontal scroll**: Content fits within viewport width
- **Readable text**: Base font ≥16px without zooming
- **Navigation**: Hamburger menu or visible nav accessible
- **Images scale**: No overflow or cropping at mobile widths

## Visual Search Readiness (Google Lens)

Google Lens processes **12-20 billion visual search queries/month** (2025).
**60% of Gen Z** prefers visual search for product discovery.

### Google Lens Optimization Checklist

- [ ] **Filename matches content**: `red-running-shoe-nike-mens.jpg` not `IMG_20250301.jpg`
- [ ] **ALT text matches computer vision**: Describe what the image shows visually
- [ ] **Clean backgrounds**: Product images on white/neutral backgrounds
- [ ] **Multiple angles**: 3-5 views per product (front, side, detail, in-use)
- [ ] **Consistent lighting**: Even, professional lighting across product images
- [ ] **High resolution**: ≥800px on longest edge for Lens recognition
- [ ] **Schema markup**: `ImageObject` with `contentUrl`, `caption`, `creator`
- [ ] **Merchant Center**: Product inventory uploaded for direct product matching

### Circle to Search (Feb 2026)
- Gemini 3 powers multi-object recognition in single image
- Ensure each product in group shots has individual ALT text
- Use `<picture>` element with multiple source formats (AVIF → WebP → JPEG)

## Playwright Timeout Handling

```python
# Use domcontentloaded for faster completion
page.goto(url, wait_until='domcontentloaded', timeout=30000)  # 30s max

# Optional networkidle with short timeout
page.wait_for_load_state('networkidle', timeout=10000)  # 10s fallback
```

**If Playwright unavailable**: Return `{"error": "playwright_unavailable", "fallback": "webfetch"}`.
The orchestrator will fall back to static HTML analysis via WebFetch.

**If analysis exceeds 30s**: Return partial results with `"timeout": true`.

## Scoring

| Category | Weight |
|----------|--------|
| Above-the-fold content | 30% |
| Mobile responsiveness | 30% |
| Visual Search readiness | 25% |
| Image quality & formats | 15% |

## Output Format

Generate visual analysis with:
1. **Screenshots** saved to `screenshots/` directory
2. **Above-the-fold assessment** (H1, CTA, hero visibility)
3. **Mobile responsiveness score** (pass/fail per check)
4. **Visual Search readiness score** (Google Lens optimization)
5. **Specific issues** with element locations and fix recommendations
