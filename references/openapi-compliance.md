<!-- Updated: 2026-03-10 -->

# OpenAPI 3.1 Compliance for AI Agent Integration

## Machine-Readable API Discovery

Agents discover and understand your API through an OpenAPI specification. **Location matters**:

### Standard locations agents will check (in order):
1. `/.well-known/openapi.json`
2. `/openapi.json`
3. `/openapi.yaml`
4. `/api/openapi.json`
5. `/api-docs`
6. `/swagger.json` (legacy, less preferred)

---

## Minimal OpenAPI 3.1 Example

```json
{
  "openapi": "3.1.0",
  "info": {
    "title": "Product API",
    "version": "1.0.0",
    "description": "API for managing projects, users, and deployments"
  },
  "servers": [
    {
      "url": "https://api.example.com",
      "description": "Production"
    }
  ],
  "paths": {
    "/api/v1/projects": {
      "get": {
        "operationId": "listProjects",
        "summary": "List all projects",
        "description": "Retrieve paginated list of projects accessible to the authenticated user",
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "projects": { "type": "array" },
                    "total": { "type": "integer" }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
```

---

## operationId Naming Convention

Agents use `operationId` to identify operations programmatically. Follow this pattern:

**Pattern**: `{verb}{noun}{context}`

| Pattern | Example | ✅ Correct | ❌ Wrong |
|---------|---------|-----------|---------|
| `{verb}{noun}` | `listProjects` | ✅ Clear | ❌ `getProjectsList` |
| With context | `createProjectMember` | ✅ Specific | ❌ `addToProject` |

**Verbs**: list, get, create, update, delete, patch, replace, search, bulk{Action}

---

## RFC 7807 Problem Details Error Format

Agents expect consistent, machine-readable error responses:

```json
{
  "type": "https://api.example.com/errors/invalid-request",
  "title": "Invalid Request",
  "status": 400,
  "detail": "The 'name' field is required and must be 1-255 characters.",
  "instance": "/api/v1/projects"
}
```

---

## Security Schemes (Required for Agent Auth)

Agents need explicitly documented authentication to invoke APIs. Include security schemes in your OpenAPI spec:

```json
{
  "components": {
    "securitySchemes": {
      "ApiKeyAuth": {
        "type": "apiKey",
        "in": "header",
        "name": "X-API-Key",
        "description": "API key obtained from dashboard at https://app.example.com/settings/api"
      },
      "BearerAuth": {
        "type": "http",
        "scheme": "bearer",
        "bearerFormat": "JWT",
        "description": "JWT token from /auth/token endpoint"
      },
      "OAuth2": {
        "type": "oauth2",
        "flows": {
          "authorizationCode": {
            "authorizationUrl": "https://auth.example.com/authorize",
            "tokenUrl": "https://auth.example.com/token",
            "scopes": {
              "read": "Read access",
              "write": "Write access"
            }
          }
        }
      }
    }
  },
  "security": [
    { "ApiKeyAuth": [] }
  ]
}
```

**Agent preference order:** API Key (header) > Bearer JWT > OAuth2. Agents prefer the simplest auth that works.

---

## Webhooks (Event-Driven Agent Integration)

OpenAPI 3.1 supports webhook definitions for event-driven agent interactions:

```json
{
  "webhooks": {
    "projectCreated": {
      "post": {
        "operationId": "onProjectCreated",
        "summary": "Triggered when a new project is created",
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "event": { "type": "string", "enum": ["project.created"] },
                  "data": {
                    "type": "object",
                    "properties": {
                      "project_id": { "type": "string" },
                      "name": { "type": "string" },
                      "created_at": { "type": "string", "format": "date-time" }
                    }
                  }
                }
              }
            }
          }
        },
        "responses": {
          "200": { "description": "Webhook received" }
        }
      }
    }
  }
}
```

**Why this matters for agents:** Agents increasingly operate in event-driven patterns. Well-documented webhooks allow agents to register for events and react autonomously.

---

## OpenAPI Version Requirements

| Version | Agent Support | Notes |
|---------|--------------|-------|
| **OpenAPI 3.1** | Recommended | Full JSON Schema support, webhooks, modern features |
| **OpenAPI 3.0** | Supported | Widely compatible, missing webhooks |
| **Swagger 2.0** | Legacy | Agents can parse but may miss modern features |

**Recommendation:** Use OpenAPI 3.1 for new specs. Agents expect modern features like webhooks and full JSON Schema validation.

---

## Validation Checklist

- [ ] OpenAPI spec at `/.well-known/openapi.json` or `/openapi.json`
- [ ] Every endpoint has an `operationId` (verb+noun pattern)
- [ ] Every endpoint has a clear `description`
- [ ] All responses documented (200, 400, 401, 429 at minimum)
- [ ] Error responses use RFC 7807 Problem Details format
- [ ] All request/response schemas have type hints
- [ ] Security schemes clearly documented
- [ ] Examples provided for complex operations
- [ ] Security schemes documented with obtaining instructions
- [ ] Webhook definitions for key events (if applicable)
- [ ] OpenAPI version is 3.1 (preferred) or 3.0
- [ ] Rate limit headers documented (X-RateLimit-Limit, X-RateLimit-Remaining)
