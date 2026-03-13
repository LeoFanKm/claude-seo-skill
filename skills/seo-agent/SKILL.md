---
name: seo-agent
description: >
  Agent Engine Optimization (AEO) - audit whether AI agents can discover,
  understand, and call your product without human assistance. Checks MCP server
  presence and quality, OpenAPI spec discoverability, llms.txt agent profile,
  SDK availability, CLI tool discoverability, and developer docs machine-readability.
  Use when user says "AEO", "agent-friendly", "MCP server", "agent discovery",
  "AI agent SEO", "llms.txt", "tool use", "agent-readable".
---

# seo-agent — Agent Engine Optimization (AEO)

## Key Statistics (2026)

| Metric | Data | Source |
|--------|------|--------|
| MCP SDK monthly downloads | Rapid growth (tens of millions) | Anthropic |
| Active MCP servers | 10,000+ | Smithery.ai |
| MCP directories | 7+ active directories | Community |
| AI Agent enterprise adoption | 85% expected | Gartner |

## Core Insight

MCP tool descriptions are the PRIMARY signal agents use to select tools—vague descriptions cause agents to skip your tools even if the API is powerful.

---

## AEO Scoring System (0-100)

9 weighted categories determine overall AEO readiness:

| Category | Weight | What's Audited |
|----------|--------|-----------------|
| **MCP Discoverability** | 20% | `.well-known/mcp.json` exists, tool description quality |
| **Directory Presence** | 10% | Registration on Smithery.ai (3x), mcp.so (2x), Cursor, PulseMCP, AIXPLORIA, Glama, GitHub Awesome MCP |
| **API Machine-Readability** | 18% | OpenAPI spec presence, operationId naming, RFC 7807 error format |
| **llms.txt Agent Profile** | 12% | File exists, includes API/SDK links, capability declarations |
| **SDK Coverage** | 12% | npm/PyPI packages exist, type definitions, structured READMEs |
| **Developer Docs Quality** | 10% | Programmatically followable Quickstart, fenced code blocks, auth docs |
| **CLI Discoverability** | 5% | `bin` entry in package.json, `--help` formatting, `--json` output |
| **robots.txt Agent Directives** | 5% | Allows known Agent UAs, API paths not blocked |
| **Agent DX** | 8% | Sandbox mode (no auth required), consistent pagination, <5min to first call |

---

## Audit Process

### 1. robots.txt Agent Analysis
Checks for explicit allowances for agentic user-agents (Claude-Code-Bot, OpenAI-Operator-Bot) with API paths accessible.

### 2. MCP Manifest Evaluation
Fetches `/.well-known/mcp.json`, scores tool descriptions for specificity (80-150 words = high quality).

### 3. OpenAPI Spec Validation
Checks for spec at standard locations (`/.well-known/openapi.json`, `/openapi.json`), validates operationId naming and error format.

### 4. llms.txt Agent Profile
Parses `/.well-known/llms.txt` and `llms-full.txt` for agent-specific fields (MCP-Server, OpenAPI-Spec, Capabilities).

### 5. SDK Package Verification
Queries npm/PyPI for package presence, checks for TypeScript type definitions and structured README (INSTALL, QUICKSTART, API Reference).

### 6. CLI Tool Check
Verifies `bin` entries in package.json, analyzes `--help` formatting and `--json` output.

### 7. Documentation Analysis
Crawls developer docs for programmatic Quickstart, code example formatting, and explicit auth header documentation.

### 8. Overall Score Calculation
Weights each category and produces final AEO readiness score (0-100).

### 9. Directory Presence Check
Verify registration across MCP directories:

| Directory | Weight | Check Method |
|-----------|--------|-------------|
| **Smithery.ai** | 3x | Primary Anthropic partner directory |
| **mcp.so** | 2x | Community curated, high traffic |
| **Glama** | 1x | MCP marketplace with ratings |
| **Cursor Directory** | 1x | Cursor IDE integration |
| **PulseMCP** | 1x | Emerging directory |
| **AIXPLORIA** | 1x | AI tool directory |
| **GitHub Awesome MCP** | 1x | Community list |

**Directory Presence Score**: 0 directories = 0pts, 1-2 = 25pts, 3-4 = 50pts, 5-6 = 75pts, 7+ = 100pts

---

## Output Format

Generates `AEO-ANALYSIS.md` with:

1. **AEO Readiness Score** — XX/100
2. **Category Breakdown** — Detailed findings for each of 9 categories
3. **Quick Wins** — 1-week effort improvements
4. **Medium Effort** — 1-month timeline improvements
5. **Architecture Changes** — 2-3 month strategic improvements

---

## Reference Files (On-Demand)

- **mcp-quality.md** — MCP manifest structure, tool description scoring, registration directories
- **agent-user-agents.md** — Known Agent UAs, robots.txt templates, llms.txt extensions
- **openapi-compliance.md** — OpenAPI 3.1 requirements, operationId naming, RFC 7807 format

---

## Usage Examples

```
/seo agent https://clawpond.com
/seo agent https://api.stripe.com
/seo agent https://github.com/anthropics/claude-sdk
```

## When to Use

Use **seo-agent** when:
- You want AI agents (Claude Code, OpenAI Operator) to discover your product
- You're building an MCP server and need quality scores
- You're evaluating a vendor's agent-readiness
- You're implementing OpenAPI specs and want agent validation
- You're launching CLI tools or SDKs and want discoverability audits
