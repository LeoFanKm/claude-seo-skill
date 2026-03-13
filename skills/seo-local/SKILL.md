---
name: seo-local
description: >
  Local SEO optimization covering Google Business Profile (GBP) audit,
  local ranking factors, NAP consistency, citation management, review
  strategy, local content optimization, and multi-location management.
  Use when user says "local SEO", "Google Business Profile", "GBP",
  "local ranking", "NAP consistency", "local citations", "review management",
  or mentions a physical business location.
allowed-tools:
  - Read
  - Grep
  - Glob
  - Bash
  - WebFetch
---

# seo-local — Local SEO Optimization

## Local SEO Framework

### Dimension A: Google Business Profile (GBP) Optimization

#### Profile Completeness Checklist
| Element | Status | Impact | Notes |
|---------|--------|--------|-------|
| **Business name** | — | Critical | Exact legal name, no keyword stuffing |
| **Primary category** | — | Critical | Most specific category available |
| **Secondary categories** | — | High | Up to 9 additional, all relevant |
| **Business description** | — | High | 750 chars max, natural keywords, value proposition |
| **Address** | — | Critical | Exact match across all platforms |
| **Phone number** | — | Critical | Local number preferred over toll-free |
| **Website URL** | — | Critical | Link to location-specific page if multi-location |
| **Business hours** | — | High | Include special hours, holiday hours |
| **Photos** | — | High | Minimum 10: exterior, interior, team, products |
| **Products/Services** | — | Medium | Complete catalog with descriptions and prices |
| **Attributes** | — | Medium | All applicable attributes selected |
| **Q&A** | — | Medium | Seed with common questions, monitor for new ones |

#### GBP Post Strategy
| Post Type | Frequency | Best Practices |
|-----------|-----------|----------------|
| **What's New** | 1-2x/week | News, updates, behind-the-scenes |
| **Offers** | As available | Clear terms, expiration date, CTA |
| **Events** | As scheduled | Date, time, description, registration link |
| **Products** | When new/updated | Photo, price, description, link |

#### GBP Optimization Rules
- Never add keywords to business name (violates Google guidelines, risks suspension)
- Respond to ALL reviews within 24-48 hours
- Upload new photos monthly (minimum)
- Keep hours accurate — incorrect hours damage trust signals
- Use UTM parameters on GBP website link for tracking

### Dimension B: Local Ranking Factors (2026)

#### The Local Pack Ranking Triad
| Factor | Weight | Controllable? | Optimization |
|--------|--------|--------------|-------------|
| **Relevance** | ~25% | Yes | Category selection, description, content |
| **Distance** | ~25% | No | Physical location is fixed |
| **Prominence** | ~50% | Yes | Reviews, citations, links, content, authority |

#### Local Organic vs Local Pack
| Aspect | Local Pack (Map) | Local Organic |
|--------|-----------------|---------------|
| Ranking factors | GBP signals dominant | Standard SEO + local signals |
| Content needed | GBP profile optimization | Location pages, local content |
| Links needed | Citations + local links | Standard link building + local |
| Reviews | Directly visible, critical | Indirect signal |

#### Key Local Ranking Signals
1. **GBP signals**: Category, keywords in description, completeness, activity
2. **Review signals**: Quantity, velocity, diversity, keywords in reviews, responses
3. **On-page signals**: NAP on website, local keywords, city/state in title tags
4. **Citation signals**: NAP consistency, citation volume, quality of citation sources
5. **Link signals**: Local links (chambers, newspapers, directories), DR of linking domains
6. **Behavioral signals**: Click-through rate, mobile clicks-to-call, driving directions requests
7. **Personalization**: Searcher's location, search history

### Dimension C: NAP Consistency & Citations

#### NAP Audit Process
1. Define canonical NAP (exact format to use everywhere):
   ```
   Name: [Exact Business Name LLC]
   Address: [123 Main St, Suite 100, City, ST 12345]
   Phone: [(555) 123-4567]
   ```
2. Audit all existing citations for consistency
3. Prioritize fixes by citation source authority

#### Core Citation Sources (Must-Have)
| Platform | Priority | Category |
|----------|---------|----------|
| **Google Business Profile** | Critical | Search engine |
| **Apple Maps / Apple Business Connect** | Critical | Maps |
| **Bing Places** | High | Search engine |
| **Yelp** | High | Review/Directory |
| **Facebook** | High | Social |
| **Better Business Bureau** | High | Trust |
| **Yellow Pages / YP.com** | Medium | Directory |
| **Foursquare** | Medium | Data aggregator |

#### Industry-Specific Citations
| Industry | Key Citations |
|----------|-------------|
| **Healthcare** | Healthgrades, Vitals, WebMD, Zocdoc |
| **Legal** | Avvo, FindLaw, Justia, Lawyers.com |
| **Real Estate** | Zillow, Realtor.com, Trulia, Redfin |
| **Restaurants** | Yelp, TripAdvisor, OpenTable, Zomato |
| **Home Services** | Angi, HomeAdvisor, Thumbtack, Houzz |
| **Automotive** | Cars.com, AutoTrader, CarGurus, DealerRater |

#### Citation Consistency Scoring
| Issue | Severity | Impact |
|-------|---------|--------|
| Wrong business name | Critical | Confuses Google entity matching |
| Wrong address | Critical | Misdirects customers, loses ranking |
| Wrong phone number | High | Lost leads, trust issues |
| Inconsistent formatting | Medium | Minor confusion signal |
| Duplicate listings | Medium | Dilutes authority |
| Closed/outdated listing | High | Incorrect info in results |

### Dimension D: Review Management & Reputation

#### Review Acquisition Strategy
| Channel | Timing | Method |
|---------|--------|--------|
| **Post-service email** | 1-3 days after service | Automated email with direct review link |
| **SMS follow-up** | Same day or next day | Short text with review link |
| **In-store QR code** | At point of sale | QR code on receipt, counter card |
| **Website widget** | After conversion/visit | Review prompt on thank-you page |
| **Staff ask** | End of positive interaction | Verbal request + card with link |

#### Review Response Templates

**Positive review (4-5 stars)**:
- Thank by name, reference specific service, invite back
- Keep unique — don't copy-paste same response

**Neutral review (3 stars)**:
- Thank for feedback, acknowledge concern, offer resolution
- Move detailed conversation offline

**Negative review (1-2 stars)**:
- Apologize, don't be defensive, offer offline resolution
- Never argue publicly — potential customers are watching

#### Review Metrics to Track
| Metric | Good | Warning | Critical |
|--------|------|---------|----------|
| Average rating | ≥4.5 | 4.0-4.4 | <4.0 |
| Review count vs competitors | Above avg | At avg | Below avg |
| Review velocity | Steady growth | Flat | Declining |
| Response rate | 100% | >80% | <80% |
| Response time | <24h | 24-72h | >72h |

#### Review Schema Implementation
```json
{
  "@type": "LocalBusiness",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.8",
    "reviewCount": "127",
    "bestRating": "5",
    "worstRating": "1"
  }
}
```
Note: Only use AggregateRating from legitimate, verifiable review sources.

### Dimension E: Local Content Strategy

#### Service Area Pages
For businesses serving multiple locations:

| Element | Requirement | Example |
|---------|------------|---------|
| **Unique title** | City + Service + Brand | "Plumbing Services in Austin, TX - ABC Plumbing" |
| **Unique H1** | Natural, location-specific | "Expert Plumbing Services for Austin Homes" |
| **Unique content** | 60%+ unique per page | Local landmarks, area-specific info, team bios |
| **Local schema** | LocalBusiness + areaServed | PostalAddress + GeoCoordinates |
| **Google Maps embed** | Centered on service area | Dynamic map with business marker |
| **Local testimonials** | From customers in that area | Name + area (with permission) |
| **Local images** | Photos from that location | Team, projects, local landmarks |

#### Quality Gates for Location Pages
- **Warning**: 30+ location pages → enforce 60%+ unique content per page
- **Hard stop**: 50+ location pages → require user justification (doorway page risk)
- Never create thin location pages with only city name swapped
- Each page must provide genuine value to someone in that location

Cross-reference: `references/quality-gates.md` for content thresholds.

#### Local Content Types
| Content | SEO Value | Effort |
|---------|----------|--------|
| Service area pages | High (local rankings) | Medium |
| Local event coverage | Medium (freshness + links) | Low |
| Local guides/resources | High (links + authority) | High |
| Case studies (local clients) | High (E-E-A-T + trust) | Medium |
| Community involvement posts | Medium (brand + links) | Low |
| Local FAQ page | Medium (PAA + voice search) | Low |

#### Local Schema Markup
Required for local businesses:
```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Business Name",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main St",
    "addressLocality": "Austin",
    "addressRegion": "TX",
    "postalCode": "78701"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "30.2672",
    "longitude": "-97.7431"
  },
  "telephone": "+1-555-123-4567",
  "openingHoursSpecification": [],
  "areaServed": {
    "@type": "GeoCircle",
    "geoMidpoint": {"@type": "GeoCoordinates", "latitude": "30.2672", "longitude": "-97.7431"},
    "geoRadius": "50 mi"
  }
}
```

### Multi-Location Management

For businesses with multiple physical locations:
1. **Unique GBP** per location (never share listings)
2. **Location-specific landing pages** with unique content
3. **Store locator** page with structured data (if 5+ locations)
4. **Consistent branding** but locally relevant content
5. **Individual review management** per location
6. **Location-specific social profiles** if resources allow

## Scoring

| Category | Weight |
|----------|--------|
| GBP Optimization | 30% |
| NAP Consistency | 20% |
| Review Management | 20% |
| Local Ranking Factors | 15% |
| Local Content Strategy | 15% |

## Output Format

Generate `LOCAL-SEO-REPORT.md` with:
1. **Local SEO Score** (0-100)
2. **GBP Audit** (completeness checklist, optimization opportunities)
3. **NAP Consistency Report** (citations audited, issues found, fix priorities)
4. **Review Analysis** (rating, count, velocity, response rate, competitor comparison)
5. **Local Ranking Assessment** (Local Pack visibility, local organic rankings)
6. **Content Recommendations** (service area pages, local content plan)
7. **Priority Action Plan** (Critical → High → Medium → Low)
