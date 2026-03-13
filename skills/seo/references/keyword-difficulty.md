# Keyword Difficulty Reference

## Difficulty Score Interpretation (0-100)

| KD Score | Level | Requirements to Rank | Typical Timeline |
|----------|-------|---------------------|-----------------|
| 0-20 | Easy | Quality content + basic on-page SEO | 1-3 months |
| 21-40 | Moderate | Strong content + 10-30 referring domains | 3-6 months |
| 41-60 | Hard | Authority content + 30-100 referring domains | 6-12 months |
| 61-80 | Very Hard | High DR + comprehensive strategy + 100+ RDs | 12-18 months |
| 81-100 | Extremely Hard | Years of authority + PR + major brand signals | 18+ months |

**Note**: KD scores vary between tools (Ahrefs KD ≠ SEMrush KD ≠ DataForSEO KD). Use the same tool consistently for trend tracking.

## Industry Typical Difficulty Ranges

| Industry | Easy Keywords (KD) | Money Keywords (KD) | Most Competitive (KD) |
|----------|-------------------|--------------------|-----------------------|
| **SaaS** | Long-tail how-tos (10-25) | "best [tool] for [use case]" (40-65) | "[category] software" (70-90) |
| **E-commerce** | Product-specific long-tail (5-20) | "best [product]" (35-60) | "[category]" head terms (75-95) |
| **Local Service** | "[service] in [small city]" (5-15) | "[service] in [major city]" (25-45) | "[service] near me" (40-60) |
| **Publisher/Media** | Niche topic questions (5-20) | "how to [popular topic]" (30-55) | "[broad topic] guide" (60-85) |
| **Finance** | Specific product questions (15-30) | "best [financial product]" (50-75) | "[financial term]" (80-95) |
| **Health** | Symptom-specific queries (10-25) | "best [treatment/supplement]" (40-65) | "[condition] treatment" (70-90) |
| **Agency** | "[service] for [niche]" (10-25) | "best [service] agency" (35-55) | "[service] company" (50-75) |

## Search Intent Classification Guide

| Intent | Typical Modifiers | KD Range | Conversion Rate |
|--------|------------------|----------|----------------|
| **Informational** | what, how, why, guide, tutorial, examples | Lower (5-40) | Low (0.5-2%) |
| **Commercial** | best, top, review, comparison, vs, alternative | Medium (25-65) | Medium (2-5%) |
| **Transactional** | buy, price, discount, coupon, order, deal | Higher (30-70) | High (5-15%) |
| **Navigational** | [brand], login, support, contact | Varies | Varies |

### Intent Validation Method
Always verify intent by checking SERP results:
- Top 10 results all blog posts → informational
- Top 10 results product pages → transactional
- Mix of both → blended intent (match dominant format)

## Keyword Opportunity Scoring

### Priority Formula
```
Priority = (Volume × CTR_potential × Business_value) / (Difficulty + 1)
```

### CTR by Position (2026 Benchmarks)
| Position | Desktop CTR | Mobile CTR | With AI Overview |
|----------|------------|------------|-----------------|
| #1 | 31.7% | 26.9% | 17-22% (reduced) |
| #2 | 14.6% | 12.8% | 8-12% |
| #3 | 9.3% | 8.1% | 5-8% |
| #4-5 | 5.5% | 4.8% | 3-5% |
| #6-10 | 2.4% | 2.1% | 1-3% |
| #11-20 | 0.8% | 0.6% | <1% |

**Note**: AI Overviews reduce organic CTR by 34-46% when present. Factor this into opportunity calculations.

## DataForSEO Keywords API Reference

### Key Endpoints
| Endpoint | Purpose | Rate Limit |
|----------|---------|-----------|
| `/v3/keywords_data/google_ads/search_volume/live` | Volume + CPC + competition | 700 keywords/request |
| `/v3/keywords_data/google_ads/keywords_for_site/live` | All keywords for a domain | 1 domain/request |
| `/v3/dataforseo_labs/google/keyword_suggestions/live` | Related keyword expansion | 1 seed/request |
| `/v3/dataforseo_labs/google/keyword_ideas/live` | Seed → broad keyword list | 1 seed/request |
| `/v3/dataforseo_labs/google/keywords_for_categories/live` | Category-based discovery | 1 category/request |
| `/v3/dataforseo_labs/google/domain_intersection/live` | Competitor keyword overlap | 20 domains max |
| `/v3/dataforseo_labs/google/ranked_keywords/live` | All keywords a domain ranks for | 1 domain/request |

### Common Query Parameters
```json
{
  "keywords": ["keyword1", "keyword2"],
  "location_code": 2840,
  "language_code": "en",
  "sort_by": "search_volume",
  "filters": [
    ["keyword_info.search_volume", ">=", 100],
    "and",
    ["keyword_info.keyword_difficulty", "<=", 60]
  ],
  "limit": 100
}
```

### Location Codes (Common)
| Country | Code | Language |
|---------|------|----------|
| United States | 2840 | en |
| United Kingdom | 2826 | en |
| Canada | 2124 | en |
| Australia | 2036 | en |
| Germany | 2276 | de |
| France | 2250 | fr |
| Japan | 2392 | ja |
| China | 2156 | zh |
