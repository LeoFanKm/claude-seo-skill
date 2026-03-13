<!-- Updated: 2026-03-10 -->

# MCP Server Quality Scoring

## Overview

An MCP (Model Context Protocol) server's discoverability by AI agents depends primarily on:
1. **Manifest completeness** — All required YAML/JSON fields present
2. **Tool description clarity** — Specific, actionable descriptions (not generic)
3. **Registration in directories** — Listed on Smithery.ai, mcp.so, Glama
4. **Authentication implementation** — Handles API keys, OAuth cleanly

---

## MCP Manifest Structure

Required fields in `.well-known/mcp.json`:

```json
{
  "name": "product-name",
  "description": "What this MCP server does and why agents need it",
  "tools": [
    {
      "name": "get-user-data",
      "description": "Fetch user profile information by user ID. Returns: name, email, account_status. Requires: user_id (UUID). Example: get-user-data(user_id='550e8400-e29b-41d4-a716-446655440000')",
      "inputSchema": {
        "type": "object",
        "properties": {
          "user_id": {
            "type": "string",
            "description": "UUID of user"
          }
        },
        "required": ["user_id"]
      }
    }
  ],
  "authentication": {
    "type": "api_key",
    "header": "X-API-Key",
    "env": "MYPRODUCT_API_KEY"
  }
}
```

---

## Tool Description Scoring Rubric

| Score | Length | Quality | Example |
|-------|--------|---------|---------|
| ⭐⭐⭐ High | 80-150 words | Specific action + inputs + outputs + error cases | "Create a new project. Inputs: name (required), description (optional), template (default: 'blank'). Returns: project_id, created_at, default_branch. Fails if: name already exists (throws 409), request exceeds rate limit" |
| ⭐⭐ Medium | 50-80 words | Action + key inputs/outputs | "List user's projects. Inputs: user_id, limit (0-100, default 20), offset (for pagination). Returns: array of {id, name, created_date}" |
| ⭐ Low | <50 words | Generic or vague | "Get project data" or "Retrieve information" |

---

## Registration Directories

### Primary (Required for discoverability — highest agent traffic)
| Directory | Weight | Description |
|-----------|--------|-------------|
| **Smithery.ai** | 3× | Official Anthropic partner directory, highest agent traffic |
| **mcp.so** | 2× | Community curated list, strong developer presence |
| **Glama** | 1× | MCP marketplace with ratings and reviews |

### Secondary (Recommended — growing agent presence)
| Directory | Weight | Description |
|-----------|--------|-------------|
| **Cursor Directory** | 1× | Cursor IDE MCP integration catalog |
| **PulseMCP** | 1× | Emerging MCP discovery platform |
| **AIXPLORIA** | 1× | AI tool and MCP directory |

### Tertiary (Helpful — community visibility)
| Directory | Weight | Description |
|-----------|--------|-------------|
| **GitHub Awesome MCP** | 0.5× | Community curated awesome list |
| **MCP Market** | 0.5× | Emerging marketplace |
| **Product Hunt MCP** | 0.5× | Product Hunt MCP collections |

### Directory Presence Score

| Directories Registered | Score |
|----------------------|-------|
| 0 | 0 |
| 1-2 | 25 |
| 3-4 | 50 |
| 5-6 | 75 |
| 7+ | 100 |

**Strategy:** Register on Smithery.ai first (3× weight), then mcp.so (2× weight), then expand to secondary directories. Presence on primary directories alone can achieve 50+ score.

---

## Authentication Types

| Type | Complexity | When to Use |
|------|-----------|------------|
| API Key (Header) | ⭐ Easy | Public APIs, low-risk operations |
| API Key (Query) | ⭐ Easy | Legacy APIs, read-only operations |
| OAuth2 | ⭐⭐⭐ Complex | User-initiated access, high-trust integrations |
| mTLS | ⭐⭐⭐ Complex | B2B, high-security environments |
| JWT Bearer | ⭐⭐ Medium | Service-to-service, token-based |

**Best Practice**: Declare auth type clearly in manifest. Agents will refuse to use tools with unclear auth requirements.

---

## MCP Quality Red Flags 🚩

- ❌ Tool description missing or vague (< 20 words)
- ❌ inputSchema poorly typed (no property descriptions, no examples)
- ❌ Authentication undocumented
- ❌ No error handling guidance (which HTTP codes are expected?)
- ❌ No rate limit or quota information
- ❌ Not registered in any public directory (invisible to agents)
