---
name: seo-geo
description: >
  Optimize content for AI Overviews (formerly SGE), ChatGPT web search,
  Perplexity, and other AI-powered search experiences. Generative Engine
  Optimization (GEO) analysis including brand mention signals, AI crawler
  accessibility, llms.txt compliance, passage-level citability scoring, and
  platform-specific optimization. Use when user says "AI Overviews", "SGE",
  "GEO", "AI search", "LLM optimization", "Perplexity", "AI citations",
  "ChatGPT search", or "AI visibility".
---

# AI Search / GEO Optimization (February 2026)

## Key Statistics

| Metric | Value | Source |
|--------|-------|--------|
| AI Overviews reach | 1.5 billion users/month across 200+ countries | Google |
| AI Overviews query coverage | 48% of all queries (58% YoY growth) | BrightEdge/Semrush 2025 |
| AI-referred sessions growth | 527% (Jan-May 2025) | SparkToro |
| ChatGPT weekly active users | 900 million | OpenAI |
| Perplexity monthly queries | 500+ million | Perplexity |
| Perplexity Sonar response speed | 10x faster than Gemini 2.0 Flash | Perplexity |
| Google AI Mode | Zero blue links, 180+ countries | Google, May 2025 |

## Critical Insight: Brand Mentions > Backlinks

**Brand mentions correlate 3× more strongly with AI visibility than backlinks.**
(Ahrefs December 2025 study of 75,000 brands)

| Signal | Correlation with AI Citations |
|--------|------------------------------|
| YouTube mentions | ~0.737 (strongest) |
| Reddit mentions | High |
| Wikipedia presence | High |
| LinkedIn presence | Moderate |
| Domain Rating (backlinks) | ~0.266 (weak) |

**Only 11% of domains** are cited by both ChatGPT and Google AI Overviews for the same query — platform-specific optimization is essential.

---

## Answer-First Content & Earned Mentions

### Answer-First Content
AI search engines extract answers from the **first 200 words** of content. Structure every page with:
1. Direct answer to the primary query in the opening paragraph
2. Key statistics and facts front-loaded
3. Self-contained answer blocks (134-167 words) that can be cited independently

### Earned Mentions > Owned Content
For AI citation, **earned mentions** (third-party references to your brand/product) carry significantly more weight than owned content:

| Signal Type | AI Citation Weight | Example |
|-------------|-------------------|---------|
| **Earned mentions** | Highest | Reddit discussions, YouTube reviews, Wikipedia entries mentioning your brand |
| **Expert citations** | High | Industry analysts, academic papers citing your research |
| **Owned authoritative** | Medium | Your blog with E-E-A-T signals, documentation |
| **Owned generic** | Low | Marketing pages, press releases |

**Strategy:** Invest in being mentioned and cited by others, not just publishing your own content.

---

## GEO Analysis Criteria (Updated)

### 1. Citability Score (25%)

**Optimal passage length: 134-167 words** for AI citation.

**Strong signals:**
- Clear, quotable sentences with specific facts/statistics
- Self-contained answer blocks (can be extracted without context)
- Direct answer in first 40-60 words of section
- Claims attributed with specific sources
- Definitions following "X is..." or "X refers to..." patterns
- Unique data points not found elsewhere

**Weak signals:**
- Vague, general statements
- Opinion without evidence
- Buried conclusions
- No specific data points

### 2. Structural Readability (20%)

**92% of AI Overview citations come from top-10 ranking pages**, but 47% come from pages ranking below position 5 — demonstrating different selection logic.

**Strong signals:**
- Clean H1→H2→H3 heading hierarchy
- Question-based headings (matches query patterns)
- Short paragraphs (2-4 sentences)
- Tables for comparative data
- Ordered/unordered lists for step-by-step or multi-item content
- FAQ sections with clear Q&A format

**Weak signals:**
- Wall of text with no structure
- Inconsistent heading hierarchy
- No lists or tables
- Information buried in paragraphs

### 3. Multi-Modal Content (15%)

Content with multi-modal elements sees **156% higher selection rates**.

**Check for:**
- Text + relevant images
- Video content (embedded or linked)
- Infographics and charts
- Interactive elements (calculators, tools)
- Structured data supporting media

### 4. Authority & Brand Signals (20%)

**Strong signals:**
- Author byline with credentials
- Publication date and last-updated date
- Citations to primary sources (studies, official docs, data)
- Organization credentials and affiliations
- Expert quotes with attribution
- Entity presence in Wikipedia, Wikidata
- Mentions on Reddit, YouTube, LinkedIn

**Weak signals:**
- Anonymous authorship
- No dates
- No sources cited
- No brand presence across platforms

### 5. Technical Accessibility (20%)

**AI crawlers do NOT execute JavaScript** — server-side rendering is critical.

**Check for:**
- Server-side rendering (SSR) vs client-only content
- AI crawler access in robots.txt
- llms.txt file presence and configuration
- RSL 1.0 licensing terms

---

## AI Crawler Detection

Check `robots.txt` for these AI crawlers:

| Crawler | Owner | Purpose |
|---------|-------|---------|
| GPTBot | OpenAI | ChatGPT web search |
| OAI-SearchBot | OpenAI | OpenAI search features |
| ChatGPT-User | OpenAI | ChatGPT browsing |
| ClaudeBot | Anthropic | Claude web features |
| PerplexityBot | Perplexity | Perplexity AI search |
| CCBot | Common Crawl | Training data (often blocked) |
| anthropic-ai | Anthropic | Claude training |
| Bytespider | ByteDance | TikTok/Douyin AI |
| cohere-ai | Cohere | Cohere models |

**Recommendation:** Allow GPTBot, OAI-SearchBot, ClaudeBot, PerplexityBot for AI search visibility. Block CCBot and training crawlers if desired.

---

## llms.txt Standard

The emerging **llms.txt** standard provides AI crawlers with structured content guidance.

**Location:** `/llms.txt` (root of domain)

**Format:**
```
# Title of site
> Brief description

## Main sections
- [Page title](url): Description
- [Another page](url): Description

## Optional: Key facts
- Fact 1
- Fact 2
```

**Check for:**
- Presence of `/llms.txt`
- Structured content guidance
- Key page highlights
- Contact/authority information

---

## RSL 1.0 (Really Simple Licensing)

New standard (December 2025) for machine-readable AI licensing terms.

**Backed by:** Reddit, Yahoo, Medium, Quora, Cloudflare, Akamai, Creative Commons

**Check for:** RSL implementation and appropriate licensing terms.

---

## Platform-Specific Optimization

| Platform | Key Citation Sources | Optimization Focus |
|----------|---------------------|-------------------|
| **Google AI Overviews** | Top-10 ranking pages (92%) | Traditional SEO + passage optimization |
| **ChatGPT** | Wikipedia (47.9%), Reddit (11.3%) | Entity presence, authoritative sources |
| **Perplexity** | Reddit (46.7%), Wikipedia | Community validation, discussions |
| **Bing Copilot** | Bing index, authoritative sites | Bing SEO, IndexNow |

---

## Output

Generate `GEO-ANALYSIS.md` with:

1. **GEO Readiness Score: XX/100**
2. **Platform breakdown** (Google AIO, ChatGPT, Perplexity scores)
3. **AI Crawler Access Status** (which crawlers allowed/blocked)
4. **llms.txt Status** (present, missing, recommendations)
5. **Brand Mention Analysis** (presence on Wikipedia, Reddit, YouTube, LinkedIn)
6. **Passage-Level Citability** (optimal 134-167 word blocks identified)
7. **Server-Side Rendering Check** (JavaScript dependency analysis)
8. **Top 5 Highest-Impact Changes**
9. **Schema Recommendations** (for AI discoverability)
10. **Content Reformatting Suggestions** (specific passages to rewrite)

---

## GEO Academic Research Foundation

### Aggarwal et al. (KDD 2024) — "GEO: Generative Engine Optimization"
Princeton University research establishing GEO as a discipline. Key findings:

#### 9 GEO Optimization Strategies & Effectiveness
| Strategy | Visibility Improvement | Best For |
|----------|----------------------|----------|
| **Cite Sources** | +30-40% | All content types |
| **Add Statistics** | +25-35% | Data-driven topics |
| **Include Quotations** | +15-25% | Expert/opinion content |
| **Make Content Authoritative** | +20-30% | YMYL, technical topics |
| **Use Technical Terms** | +10-20% | Specialized/professional audiences |
| **Optimize Fluency** | +5-15% | All content (baseline quality) |
| **Add Unique Words** | +5-10% | Competitive topics |
| **Simplify Language** | +5-10% | Consumer/general topics |
| **Keyword Stuffing** | **-15-25%** (negative) | **Never use** — penalized |

**Key takeaway**: Citation and statistical enrichment are 3-5x more effective than keyword-focused strategies for AI visibility.

#### GEO Scoring Formula
```
GEO Score = (Citability × 0.25) + (Structure × 0.20) + (Multi-Modal × 0.15) + (Authority × 0.20) + (Technical × 0.20)

Where each dimension is scored 0-100:
- Citability: Self-contained answer blocks, stats with sources, definition patterns
- Structure: Heading hierarchy, lists/tables, paragraph length, FAQ format
- Multi-Modal: Images, video, infographics, interactive elements
- Authority: Author credentials, citations, brand mentions, entity presence
- Technical: SSR, AI crawler access, llms.txt, structured data
```

#### GEO vs Traditional SEO
| Aspect | Traditional SEO | GEO |
|--------|----------------|-----|
| Target | Blue links (position 1-10) | AI-generated answers (citations) |
| Key factor | Backlinks + on-page | Brand mentions + citability |
| Content format | Long-form, keyword-rich | Structured, quotable passages |
| Success metric | Ranking position, CTR | Citation frequency, brand visibility |
| Update cycle | Algorithm updates | Model updates, feature rollouts |

---

## Quick Wins

1. Add "What is [topic]?" definition in first 60 words
2. Create 134-167 word self-contained answer blocks
3. Add question-based H2/H3 headings
4. Include specific statistics with sources
5. Add publication/update dates
6. Implement Person schema for authors
7. Allow key AI crawlers in robots.txt

## Medium Effort

1. Create `/llms.txt` file
2. Add author bio with credentials + Wikipedia/LinkedIn links
3. Ensure server-side rendering for key content
4. Build entity presence on Reddit, YouTube
5. Add comparison tables with data
6. Implement FAQ sections (structured, not schema for commercial sites)

## High Impact

1. Create original research/surveys (unique citability)
2. Build Wikipedia presence for brand/key people
3. Establish YouTube channel with content mentions
4. Implement comprehensive entity linking (sameAs across platforms)
5. Develop unique tools or calculators
