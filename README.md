# 🔍 claude-seo-skill

> **[English](README.md)** | [中文](README_CN.md) | [日本語](README_JA.md) | [한국어](README_KR.md)

<div align="center">

**25-in-1 — The most comprehensive Claude SEO skill suite available**

keyword research · content · technical audit · GEO/AI Overview · backlinks · rank tracking

*Other Claude SEO skills cover 1-3 areas. This covers all of them.*

[![GitHub Stars](https://img.shields.io/github/stars/leofankm/claude-seo-skill?style=flat-square&logo=github&color=2563eb)](https://github.com/leofankm/claude-seo-skill/stargazers)
[![Version](https://img.shields.io/badge/version-4.0.0-2563eb?style=flat-square)](https://github.com/leofankm/claude-seo-skill/releases)
[![License](https://img.shields.io/badge/license-MIT-22c55e?style=flat-square)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude_Code-compatible-9333ea?style=flat-square)](https://claude.ai/code)
[![Works With](https://img.shields.io/badge/works_with-OpenClaw_·_Cursor_·_Kiro-f59e0b?style=flat-square)](#platforms)

[**🌐 Landing Page**](https://clawpond.com/seo-skill) · [**📝 Blog Post**](https://clawpond.com/blog/claude-seo-skill-suite-25-in-1) · [**中文**](README_CN.md) · [**日本語**](README_JA.md) · [**한국어**](README_KR.md)

![Claude SEO Skill Suite: The 25-in-1 Toolkit Adventure](claude-seo-skill-suite-25in1-comic.jpg)

</div>

---

## Why 25-in-1?

Most Claude SEO skills (and GPTs) do **one thing** — keyword research OR content audit OR technical check. You still need 5-7 tools to cover the full SEO workflow.

**This suite replaces all of them.** 25 specialized skills, one unified Claude context:

- Keyword research → Content brief → Technical audit → GEO optimization → Backlink analysis → Rank monitoring
- **GEO / AI Overview optimization included** (no other Claude SEO skill has this)
- Princeton KDD 2024 research-backed GEO strategies
- 80-rule comprehensive site audit
- Works with Claude Code, OpenClaw, Cursor, and Kiro

> **Other SEO tools are still ignoring AI Overview** — while Google AI Overview is already reducing traditional SEO traffic by 34–46%. This is the only skill suite that takes GEO seriously.

```
Keywords → Content Brief → Technical Audit → GEO/AI Overview → Backlinks → Monitoring
   ↓              ↓               ↓                  ↓               ↓           ↓
seo-keyword   seo-content    seo-audit          seo-geo         seo-backlinks  seo-monitor
  -research    -brief        seo-technical      seo-schema       seo-competitor seo-rank
seo-competitor seo-content   seo-performance    seo-agent          -pages       -tracker
  -analysis    seo-geo        seo-sitemap        seo-images                    seo-report
seo-data-tools seo-schema    seo-hreflang       seo-page                      seo-multiplatform
               seo-images    seo-programmatic
```

---

## 25 Skills at a Glance

| # | Skill | Purpose | Command |
|---|-------|---------|---------|
| 1 | `seo` | Orchestrator — routes to all 24 sub-skills | `/seo <command>` |
| 2 | `seo-plan` | Strategic SEO planning & 12-month roadmap | `/seo plan <domain>` |
| 3 | `seo-agent` | Agent Engine Optimization (AEO) | `/seo agent <url>` |
| 4 | `seo-keyword-research` | Seed expansion → topic clusters, intent classification | `/seo keywords <topic>` |
| 5 | `seo-data-tools` | DataForSEO / GSC / GA4 API integration | `/seo data <query>` |
| 6 | `seo-competitor-analysis` | Competitor keyword gaps, SWOT, SOV | `/seo competitors <domain>` |
| 7 | `seo-content-brief` | SERP-driven content briefs with gap analysis | `/seo brief <keyword>` |
| 8 | `seo-content` | E-E-A-T scoring, thin content detection | `/seo content <url>` |
| 9 | `seo-geo` | **GEO / AI Overview optimization** (Princeton KDD 2024) | `/seo geo <url>` |
| 10 | `seo-schema` | Auto-generate JSON-LD for 15+ schema types | `/seo schema <url>` |
| 11 | `seo-images` | Image SEO + Google Lens visual search | `/seo images <url>` |
| 12 | `seo-page` | Deep single-page on-page analysis | `/seo page <url>` |
| 13 | `seo-audit` | **80-rule full-site audit across 7 categories** | `/seo audit <url>` |
| 14 | `seo-technical` | 8-category technical SEO deep-dive | `/seo technical <url>` |
| 15 | `seo-performance` | Core Web Vitals: LCP, INP, CLS analysis | `/seo performance <url>` |
| 16 | `seo-sitemap` | XML sitemap audit & generation | `/seo sitemap <url>` |
| 17 | `seo-hreflang` | International SEO / hreflang validation | `/seo hreflang <url>` |
| 18 | `seo-backlinks` | Backlink analysis + competitor link gap | `/seo backlinks <domain>` |
| 19 | `seo-competitor-pages` | Auto-generate SEO-optimized comparison pages | `/seo vs <url1> <url2>` |
| 20 | `seo-monitor` | Intelligent SEO alerting system | `/seo monitor <domain>` |
| 21 | `seo-rank-tracker` | Rank + SERP feature tracking | `/seo rank <keyword>` |
| 22 | `seo-report` | Automated weekly/monthly/quarterly reports | `/seo report <domain>` |
| 23 | `seo-multiplatform` | TikTok / YouTube / Reddit SEO | `/seo multiplatform <brand>` |
| 24 | `seo-programmatic` | Programmatic SEO planning | `/seo programmatic <niche>` |
| 25 | `seo-local` | Local SEO + Google Business Profile | `/seo local <business>` |

---

## GEO / AI Overview — What Others Don't Have

> **Google AI Overview now occupies the top of search results. Traditional SEO traffic is down 34–46%.** Most SEO tools pretend this isn't happening.

This is the **only** Claude skill suite with systematic GEO coverage, backed by peer-reviewed academic research.

**Princeton University KDD 2024 — 9 GEO Optimization Strategies** (Aggarwal et al.):

| Strategy | AI Citation Rate Change | Difficulty |
|----------|------------------------|------------|
| Cite Sources | **+30–40%** | Low |
| Add Statistics | **+25–35%** | Low |
| Quote Experts | +20–30% | Medium |
| Fluency Optimization | +15–25% | Low |
| Simplify Language | +10–20% | Low |
| Structure Content | +10–20% | Low |
| Multi-Modal Content | +15–25% | High |
| Add Technical Terms | +5–15% | Medium |
| Keyword Stuffing ❌ | −15–25% | Avoid |

**GEO Scoring Formula** (from `seo-geo/SKILL.md`):
```
GEO Score = (Citability × 0.25) + (Structure × 0.20) + (Authority × 0.20)
          + (Multi-Modal × 0.15) + (Technical × 0.20)
```

**seo-geo capabilities:**
- AI Overview trigger condition detection
- Perplexity / ChatGPT Search visibility analysis
- `llms.txt` generation for AI crawler accessibility
- GEO-optimized content rewrite suggestions
- AI Overview competitor tracking

---

## Quick Install

### Option 1: OpenClaw Skill Marketplace (Recommended)
```bash
claw install seo-suite
```

### Option 2: Manual install (copy skill files)
```bash
git clone https://github.com/leofankm/claude-seo-skill
cd claude-seo-skill

# Copy skills
cp -r skills/seo* ~/.claude/skills/

# Copy agents
cp -r agents/seo* ~/.claude/agents/
```

### Option 3: One-line install script
```bash
curl -sSL https://raw.githubusercontent.com/leofankm/claude-seo-skill/main/install.sh | bash
```

---

## Usage

### First run (recommended sequence)
```bash
# 1. Full site health check — understand your baseline in 10 minutes
/seo audit https://yoursite.com

# 2. Keyword research — find your highest-priority targets
/seo keywords "your core topic"

# 3. Content brief — get a writer-ready brief based on real SERP data
/seo brief "target keyword"

# 4. GEO check — see your AI search visibility and fix it first
/seo geo https://your-important-page.com
```

### Orchestrator commands
```bash
/seo audit <url>              # Full site audit (80 rules, 7 categories)
/seo keywords <topic>         # Keyword research → topic clusters → priority list
/seo brief <keyword>          # SERP-driven content brief
/seo geo <url>                # GEO / AI Overview optimization
/seo competitors <domain>     # Competitor SEO intelligence + SWOT
/seo technical <url>          # Technical SEO (8 categories)
/seo performance <url>        # Core Web Vitals analysis
/seo backlinks <domain>       # Backlink analysis + gap discovery
/seo rank <keyword>           # Rank + SERP feature tracking
/seo local <business>         # Local SEO + GBP optimization
/seo report <domain>          # Automated SEO report
```

### Skill combos by stage

| Stage | Skills | Best For |
|-------|--------|---------|
| **Starter** | audit + keyword-research + content-brief | Individual sites, beginners |
| **Growth** | + geo + technical + backlinks + rank-tracker | Growing products, content sites |
| **Full Stack** | All 25 skills | Professional SEO teams, agencies |

---

## Real-World Scenarios

| Scenario | Without Suite | With Suite |
|----------|--------------|------------|
| Keyword research | Export from Ahrefs → copy to spreadsheet → manually judge intent | `/seo keywords "topic"` → clusters + priority list, 1 step |
| Content brief | Manually analyze top 10 competitors, 2–4 hours | `/seo brief "keyword"` → complete brief with gap analysis, 15 min |
| Technical audit | Screaming Frog + manual checklist | `/seo audit <url>` → 80-rule report with fix code snippets |
| Check AI visibility | No tool exists for this | `/seo geo <url>` → GEO score + AI Overview triggers + rewrites |
| Competitor analysis | Switch between 3+ tools, half a day | `/seo competitors <domain>` → keyword gaps + SWOT + quick wins |
| Monthly report | Manual data from GSC + GA4 + Ahrefs, 4–8 hours | `/seo report <domain>` → auto-aggregated with insights, 1 hour |

---

## Audit Rules (80 Core Rules)

The `seo-audit` skill includes 80 rules across 7 categories:

| Category | Rules | Examples |
|----------|-------|---------|
| **Core SEO** (CS01–CS15) | 15 | Title tag, H1, URL structure, canonical |
| **Performance** (PF01–PF12) | 12 | LCP, INP, CLS, TTFB, resource compression |
| **Links** (LK01–LK12) | 12 | Internal link density, broken links, redirect chains |
| **Images** (IM01–IM10) | 10 | Alt text, compression, lazy load, format |
| **Security** (SC01–SC10) | 10 | HTTPS, HSTS, CSP, mixed content |
| **AI/GEO Readiness** (AI01–AI10) | 10 | llms.txt, Perplexity visibility, structured FAQ |
| **Content Quality** (CQ01–CQ11) | 11 | E-E-A-T, thin content, duplicate content |

---

## Repository Structure

```
claude-seo-skill/
├── README.md                    ← You are here
├── README_CN.md                 ← Chinese documentation
├── LICENSE                      ← MIT
├── CHANGELOG.md                 ← Version history
├── install.sh                   ← One-line installer
├── skills/
│   ├── seo/SKILL.md             ← Orchestrator (routes all 24 sub-skills)
│   ├── seo-audit/SKILL.md       ← 80-rule full-site audit
│   ├── seo-keyword-research/    ← Keyword research methodology
│   ├── seo-competitor-analysis/ ← Competitor intelligence framework
│   ├── seo-geo/SKILL.md         ← GEO / AI Overview optimization
│   ├── seo-local/SKILL.md       ← Local SEO + GBP
│   └── ... (25 skill directories total)
├── agents/
│   └── seo*.md                  ← 27 specialized Claude agents
└── references/
    ├── eeat-framework.md        ← E-E-A-T scoring framework
    ├── keyword-difficulty.md    ← KD scoring + industry benchmarks
    ├── cwv-thresholds.md        ← Core Web Vitals thresholds
    ├── schema-types.md          ← Schema.org type reference
    ├── backlink-metrics.md      ← Backlink quality metrics
    ├── quality-gates.md         ← Content quality gates
    ├── mcp-quality.md           ← MCP server quality standards
    ├── openapi-compliance.md    ← OpenAPI compliance reference
    └── agent-user-agents.md     ← AI crawler user agents
```

---

## Platforms

Works with any Claude Code-compatible environment:

| Platform | Status | Notes |
|----------|--------|-------|
| **Claude Code** | ✅ Full support | Copy to `~/.claude/skills/` |
| **OpenClaw** | ✅ Full support | `claw install seo-suite` |
| **Cursor** | ✅ Full support | Copy to `.cursor/skills/` |
| **Kiro** | ✅ Full support | Copy to `.kiro/skills/` |
| **OpenCode** | ✅ Full support | Copy to skills directory |

---

## Version History

| Version | What's New |
|---------|-----------|
| **v4.0** | +seo-keyword-research, +seo-competitor-analysis, +seo-local; +80 audit rules in seo-audit; +Princeton KDD 2024 GEO research in seo-geo; +keyword-difficulty.md reference |
| v3.0 | +seo-geo (AI Overview), +seo-agent (AEO), +seo-multiplatform, +seo-programmatic, +seo-local |
| v2.0 | +seo-rank-tracker, +seo-monitor, +seo-report, +seo-data-tools; 9 reference files |
| v1.0 | Core 15 skills: audit, technical, performance, content, schema, images, page, backlinks, sitemap, hreflang, competitor-pages, content-brief, plan, visual |

---

## Contributing

All 25 skill files are plain Markdown — no build step required.

1. Fork this repo
2. Edit any `skills/*/SKILL.md` or `agents/*.md`
3. Open a PR with: what you changed, why, and (if possible) a test case

**High-value contributions:**
- New GEO strategies with measured effectiveness data
- New SERP feature tracking methods (AI Overview is changing fast)
- Industry-specific SEO rule sets (e-commerce, SaaS, local, media)
- New AI search engine coverage (Perplexity, ChatGPT Search, Gemini)

---

## Community

<div align="center">

Scan to join our SEO × AI practitioners community

| Chinese Community | English Community |
|:-----------------:|:-----------------:|
| <img src="https://clawpond.com/wechat-qr-zh-v3.jpg" width="120" alt="WeChat QR (Chinese)"> | <img src="https://clawpond.com/wechat-qr-en.png" width="120" alt="WeChat QR (English)"> |
| 中文交流群 | English Group |
| SEO实践 + 技能讨论 | GEO research + skill updates |

**Weekly in community:**
- 🔍 Real-site SEO case studies with data
- 📊 GEO research: AI Overview rule changes
- 🛠 Skill update announcements
- 💬 Q&A: strategy + skill usage

</div>

---

## Citation

If you use the GEO research data from this skill suite, please cite:

```bibtex
@inproceedings{aggarwal2024geo,
  title     = {GEO: Generative Engine Optimization},
  author    = {Aggarwal, Pranjal and Mündler, Niels and others},
  booktitle = {Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining},
  year      = {2024},
  publisher = {ACM}
}
```

---

## License

MIT © [OpenClaw](https://clawpond.com)

Use freely. Contribute back. Build great SEO workflows.

---

<div align="center">
  <sub>Built by <a href="https://clawpond.com">OpenClaw</a> · <a href="https://clawpond.com/seo-skill">Landing Page</a> · <a href="https://clawpond.com/blog/claude-seo-skill-suite-25-in-1">Blog Post</a></sub>
</div>
