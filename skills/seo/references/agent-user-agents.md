<!-- Updated: 2026-03-10 -->

# Agent User-Agent Strings and robots.txt

## Known Agentic User-Agents (2026)

These user-agents identify **autonomous agent systems** — NOT search crawlers:

| User-Agent | Source | Type | Impact |
|------------|--------|------|--------|
| `Claude-Code-Bot/1.0` | Anthropic | Tool-use agent | High — primary Claude Code entry point |
| `OpenAI-Operator-Bot/1.0` | OpenAI | Autonomous operator | High — OpenAI's next-gen agent |
| `LangChain-Agent/1.0` | LangChain | Agent framework | Medium — used by many teams |
| `CrewAI-Agent/1.0` | CrewAI | Multi-agent framework | Medium |
| `AutoGPT-Bot/1.0` | AutoGPT | Standalone agent | Low-Medium |
| `Perplexity-Agent/1.0` | Perplexity | Citation assistant | Medium |
| `Gemini-Agent/1.0` | Google | Autonomous agent | High — Google's agentic AI |
| `Copilot-Agent/1.0` | Microsoft | Agent framework | High — Microsoft Copilot agents |
| `Devin-Bot/1.0` | Cognition | AI developer agent | Medium — autonomous coding agent |

## Compare: Search vs Agent vs Training Crawlers

| Crawler Type | Purpose | User-Agent | robots.txt Rules |
|---|---|---|---|
| **Search** | Index pages for search results | `Googlebot`, `Bingbot` | `User-agent: *` allows most |
| **Citation** | Extract passages for AI summaries | `GPTBot`, `ClaudeBot` | `Allow: /` (content-heavy sites) |
| **Training** | Download pages for model training | `Google-Extended`, `CCBot` | `Disallow: /` (opt-out) |
| **Agentic** | Call APIs, invoke tools, make decisions | `Claude-Code-Bot` | **API paths allowed, content paths restricted** |

**Key Insight**: Agentic bots need **API access** but should respect **content restrictions**.

---

## robots.txt Best Practice for Agents

```robots
# Allow search crawlers (standard rules)
User-agent: Googlebot
User-agent: Bingbot
Disallow: /admin
Disallow: /private
Disallow: /*.pdf$

# Allow search crawlers to see structured data
User-agent: *.schema.org
Allow: /

# **NEW: Explicitly allow agentic crawlers to reach APIs**
User-agent: Claude-Code-Bot
User-agent: OpenAI-Operator-Bot
User-agent: LangChain-Agent
Allow: /api/
Allow: /.well-known/
Disallow: /content/
Disallow: /blog/

# Set crawl delay for agents (avoid hammering APIs)
User-agent: Claude-Code-Bot
Crawl-delay: 1

# Disallow training crawlers
User-agent: Google-Extended
User-agent: CCBot
Disallow: /
```

---

## llms.txt Agent Extensions

Standard `llms.txt` (GEO) declares content policy. **Agent-oriented** llms.txt also includes:

```txt
# Standard fields (GEO)
Title: My Company
Description: ...
Homepage: ...

# Agent-specific extensions
MCP-Server: /.well-known/mcp.json
OpenAPI-Spec: /openapi.json
CLI-Tool: https://github.com/myco/cli
SDK-npm: @mycompany/sdk
SDK-python: mycompany-sdk

# Capability declarations for agents
Capabilities:
- data_retrieval
- api_execution
- webhook_management

# Authentication guidance for agents
Authentication: API Key (header: X-API-Key)
Rate-Limit: 100 req/min
```

---

## Verification Checklist

- [ ] robots.txt lists agentic user-agents explicitly
- [ ] `/api/` paths are `Allow:` for agentic UAs
- [ ] `/content/` or `/blog/` paths are `Disallow:` for agentic UAs
- [ ] `Crawl-delay` is reasonable (1-5 seconds)
- [ ] `llms.txt` lists MCP server and OpenAPI spec locations

---

## RSL 1.0 (Really Simple Licensing)

New machine-readable content licensing standard (December 2025) specifically for AI agent interactions:

**Backed by:** Reddit, Yahoo, Medium, Quora, Cloudflare, Akamai, Creative Commons

### How RSL Relates to Agents
- Agents check RSL terms before accessing content programmatically
- RSL declarations can specify which agent operations are permitted
- Augments robots.txt with licensing-specific permissions

### RSL Implementation
```
# In robots.txt or as separate /.well-known/rsl.txt
License: CC-BY-4.0
AI-Training: disallow
AI-Search-Citation: allow
AI-Agent-Access: allow-api-only
```

### Verification Checklist
- [ ] RSL terms declared (robots.txt or dedicated file)
- [ ] AI-Agent-Access explicitly set
- [ ] Terms compatible with intended agent use cases
- [ ] No contradiction between robots.txt and RSL declarations
