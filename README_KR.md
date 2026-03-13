[English](README.md) | [中文](README_CN.md) | [日本語](README_JA.md) | **한국어**

# 🔍 claude-seo-skill

<div align="center">

**25-in-1 — 현재 가장 포괄적인 Claude SEO 스킬 모음**

키워드 리서치 · 콘텐츠 · 기술 감사 · GEO/AI Overview · 백링크 · 순위 추적

*다른 Claude SEO 스킬은 1~3개 영역만 커버합니다. 이 모음은 전체를 커버합니다.*

[![GitHub Stars](https://img.shields.io/github/stars/leofankm/claude-seo-skill?style=flat-square&logo=github&color=2563eb)](https://github.com/leofankm/claude-seo-skill/stargazers)
[![Version](https://img.shields.io/badge/version-4.0.0-2563eb?style=flat-square)](https://github.com/leofankm/claude-seo-skill/releases)
[![License](https://img.shields.io/badge/license-MIT-22c55e?style=flat-square)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude_Code-compatible-9333ea?style=flat-square)](https://claude.ai/code)
[![Works With](https://img.shields.io/badge/works_with-OpenClaw_·_Cursor_·_Kiro-f59e0b?style=flat-square)](#platforms)

[**랜딩 페이지**](https://clawpond.com/seo-skill) · [**블로그 포스트**](https://clawpond.com/blog/claude-seo-skill-suite-25-in-1) · [**中文文档**](README_CN.md)

![Claude SEO Skill Suite: The 25-in-1 Toolkit Adventure](claude-seo-skill-suite-25in1-comic.jpg)

</div>

---

## 왜 25-in-1인가?

시중의 Claude SEO 스킬(또는 GPTs)은 보통 **한 가지만** 합니다 — 키워드 리서치만, 콘텐츠 감사만, 기술 점검만. 전체 SEO 워크플로우를 커버하려면 여전히 5~7개 도구가 필요합니다.

**이 모음이 모두 대체합니다.** 25개 전문 스킬, 하나의 통합된 Claude 컨텍스트:

- 키워드 리서치 → 콘텐츠 브리프 → 기술 감사 → GEO 최적화 → 백링크 분석 → 순위 모니터링
- **GEO / AI Overview 최적화 내장** (다른 Claude SEO 스킬에는 없습니다)
- Princeton KDD 2024 학술 연구 기반의 GEO 전략
- 80개 규칙의 종합 사이트 감사
- Claude Code, OpenClaw, Cursor, Kiro 지원

> **다른 SEO 도구들은 여전히 AI Overview를 무시하고 있습니다** — Google AI Overview가 이미 기존 SEO 트래픽을 34~46% 감소시키고 있는데도. GEO를 진지하게 다루는 유일한 스킬 모음입니다.

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

## 25개 스킬 한눈에 보기

| # | 스킬 | 기능 | 명령어 |
|---|------|------|--------|
| 1 | `seo` | 오케스트레이터 — 24개 하위 스킬로 라우팅 | `/seo <command>` |
| 2 | `seo-plan` | 전략적 SEO 계획 및 12개월 로드맵 수립 | `/seo plan <domain>` |
| 3 | `seo-agent` | Agent Engine Optimization (AEO) | `/seo agent <url>` |
| 4 | `seo-keyword-research` | 시드 키워드 확장 → 토픽 클러스터, 검색 의도 분류 | `/seo keywords <topic>` |
| 5 | `seo-data-tools` | DataForSEO / GSC / GA4 API 연동 | `/seo data <query>` |
| 6 | `seo-competitor-analysis` | 경쟁사 키워드 갭, SWOT, SOV 분석 | `/seo competitors <domain>` |
| 7 | `seo-content-brief` | SERP 기반 콘텐츠 브리프 및 갭 분석 | `/seo brief <keyword>` |
| 8 | `seo-content` | E-E-A-T 평가, 저품질 콘텐츠 탐지 | `/seo content <url>` |
| 9 | `seo-geo` | **GEO / AI Overview 최적화** (Princeton KDD 2024) | `/seo geo <url>` |
| 10 | `seo-schema` | 15개 이상 스키마 유형의 JSON-LD 자동 생성 | `/seo schema <url>` |
| 11 | `seo-images` | 이미지 SEO + Google Lens 시각 검색 최적화 | `/seo images <url>` |
| 12 | `seo-page` | 단일 페이지 심층 온페이지 분석 | `/seo page <url>` |
| 13 | `seo-audit` | **7개 카테고리, 80개 규칙 기반 전체 사이트 감사** | `/seo audit <url>` |
| 14 | `seo-technical` | 8개 카테고리 기술 SEO 정밀 분석 | `/seo technical <url>` |
| 15 | `seo-performance` | Core Web Vitals: LCP, INP, CLS 분석 | `/seo performance <url>` |
| 16 | `seo-sitemap` | XML 사이트맵 감사 및 생성 | `/seo sitemap <url>` |
| 17 | `seo-hreflang` | 다국어 SEO / hreflang 검증 | `/seo hreflang <url>` |
| 18 | `seo-backlinks` | 백링크 분석 + 경쟁사 링크 갭 발견 | `/seo backlinks <domain>` |
| 19 | `seo-competitor-pages` | SEO 최적화된 비교 페이지 자동 생성 | `/seo vs <url1> <url2>` |
| 20 | `seo-monitor` | 지능형 SEO 알림 시스템 | `/seo monitor <domain>` |
| 21 | `seo-rank-tracker` | 순위 + SERP 피처 추적 | `/seo rank <keyword>` |
| 22 | `seo-report` | 주간/월간/분기별 자동 리포트 | `/seo report <domain>` |
| 23 | `seo-multiplatform` | TikTok / YouTube / Reddit SEO | `/seo multiplatform <brand>` |
| 24 | `seo-programmatic` | 프로그래매틱 SEO 계획 수립 | `/seo programmatic <niche>` |
| 25 | `seo-local` | 로컬 SEO + Google Business Profile 최적화 | `/seo local <business>` |

---

## GEO / AI Overview — 다른 곳에는 없는 기능

> **Google AI Overview가 검색 결과 최상단을 차지하고 있습니다. 기존 SEO 트래픽은 34~46% 감소했습니다.** 대부분의 SEO 도구는 이 현실을 외면하고 있습니다.

체계적인 GEO 대응을 갖춘 **유일한** Claude 스킬 모음이며, 동료 심사를 거친 학술 연구에 기반합니다.

**Princeton University KDD 2024 — 9가지 GEO 최적화 전략** (Aggarwal et al.):

| 전략 | AI 인용률 변화 | 난이도 |
|------|---------------|--------|
| 출처 명시 | **+30–40%** | 낮음 |
| 통계 데이터 추가 | **+25–35%** | 낮음 |
| 전문가 인용 | +20–30% | 중간 |
| 가독성 최적화 | +15–25% | 낮음 |
| 쉬운 표현 사용 | +10–20% | 낮음 |
| 구조화된 콘텐츠 | +10–20% | 낮음 |
| 멀티모달 콘텐츠 | +15–25% | 높음 |
| 전문 용어 추가 | +5–15% | 중간 |
| 키워드 스터핑 ❌ | −15–25% | 금지 |

**GEO 점수 산출 공식** (`seo-geo/SKILL.md` 기준):
```
GEO Score = (Citability × 0.25) + (Structure × 0.20) + (Authority × 0.20)
          + (Multi-Modal × 0.15) + (Technical × 0.20)
```

**seo-geo 주요 기능:**
- AI Overview 노출 조건 탐지
- Perplexity / ChatGPT Search 가시성 분석
- AI 크롤러 접근성을 위한 `llms.txt` 생성
- GEO 최적화 콘텐츠 리라이트 제안
- AI Overview 경쟁사 추적

---

## 빠른 설치

### 방법 1: OpenClaw Skill Marketplace (권장)
```bash
claw install seo-suite
```

### 방법 2: 수동 설치 (스킬 파일 복사)
```bash
git clone https://github.com/leofankm/claude-seo-skill
cd claude-seo-skill

# 스킬 복사
cp -r skills/seo* ~/.claude/skills/

# 에이전트 복사
cp -r agents/seo* ~/.claude/agents/
```

### 방법 3: 원라인 설치 스크립트
```bash
curl -sSL https://raw.githubusercontent.com/leofankm/claude-seo-skill/main/install.sh | bash
```

---

## 사용법

### 처음 사용할 때 (권장 순서)
```bash
# 1. 전체 사이트 상태 점검 — 10분 만에 현재 상태를 파악합니다
/seo audit https://yoursite.com

# 2. 키워드 리서치 — 최우선 타겟 키워드를 찾습니다
/seo keywords "your core topic"

# 3. 콘텐츠 브리프 — 실제 SERP 데이터 기반의 실행 가능한 브리프를 생성합니다
/seo brief "target keyword"

# 4. GEO 점검 — AI 검색 노출 현황을 확인하고 우선 개선합니다
/seo geo https://your-important-page.com
```

### 오케스트레이터 명령어
```bash
/seo audit <url>              # 전체 사이트 감사 (80개 규칙, 7개 카테고리)
/seo keywords <topic>         # 키워드 리서치 → 토픽 클러스터 → 우선순위 목록
/seo brief <keyword>          # SERP 기반 콘텐츠 브리프
/seo geo <url>                # GEO / AI Overview 최적화
/seo competitors <domain>     # 경쟁사 SEO 인텔리전스 + SWOT
/seo technical <url>          # 기술 SEO (8개 카테고리)
/seo performance <url>        # Core Web Vitals 분석
/seo backlinks <domain>       # 백링크 분석 + 갭 발견
/seo rank <keyword>           # 순위 + SERP 피처 추적
/seo local <business>         # 로컬 SEO + GBP 최적화
/seo report <domain>          # 자동 SEO 리포트
```

### 단계별 스킬 조합

| 단계 | 스킬 | 적합 대상 |
|------|------|-----------|
| **입문** | audit + keyword-research + content-brief | 개인 사이트, 초보자 |
| **성장** | + geo + technical + backlinks + rank-tracker | 성장 중인 서비스, 콘텐츠 사이트 |
| **풀스택** | 25개 전체 스킬 | 전문 SEO 팀, 에이전시 |

---

## 실전 활용 시나리오

| 시나리오 | 스킬 없이 | 스킬 사용 시 |
|----------|----------|-------------|
| 키워드 리서치 | Ahrefs에서 내보내기 → 스프레드시트 복사 → 수동으로 의도 판단 | `/seo keywords "topic"` → 클러스터 + 우선순위 목록, 한 단계로 완료 |
| 콘텐츠 브리프 | 상위 10개 경쟁 페이지 수동 분석, 2~4시간 소요 | `/seo brief "keyword"` → 갭 분석 포함 완성형 브리프, 15분 |
| 기술 감사 | Screaming Frog + 수동 체크리스트 | `/seo audit <url>` → 코드 수정 스니펫 포함 80개 규칙 리포트 |
| AI 노출 확인 | 전용 도구가 없음 | `/seo geo <url>` → GEO 점수 + AI Overview 트리거 + 리라이트 제안 |
| 경쟁사 분석 | 3개 이상 도구를 오가며 반나절 작업 | `/seo competitors <domain>` → 키워드 갭 + SWOT + 빠른 개선점 |
| 월간 리포트 | GSC + GA4 + Ahrefs에서 수동 데이터 수집, 4~8시간 | `/seo report <domain>` → 인사이트 포함 자동 집계, 1시간 |

---

## 감사 규칙 (80개 핵심 규칙)

`seo-audit` 스킬에는 7개 카테고리에 걸쳐 80개 규칙이 포함되어 있습니다:

| 카테고리 | 규칙 수 | 예시 |
|----------|---------|------|
| **Core SEO** (CS01–CS15) | 15 | Title 태그, H1, URL 구조, canonical |
| **Performance** (PF01–PF12) | 12 | LCP, INP, CLS, TTFB, 리소스 압축 |
| **Links** (LK01–LK12) | 12 | 내부 링크 밀도, 깨진 링크, 리다이렉트 체인 |
| **Images** (IM01–IM10) | 10 | Alt 텍스트, 압축, 지연 로딩, 포맷 |
| **Security** (SC01–SC10) | 10 | HTTPS, HSTS, CSP, 혼합 콘텐츠 |
| **AI/GEO Readiness** (AI01–AI10) | 10 | llms.txt, Perplexity 노출, 구조화된 FAQ |
| **Content Quality** (CQ01–CQ11) | 11 | E-E-A-T, 저품질 콘텐츠, 중복 콘텐츠 |

---

## 저장소 구조

```
claude-seo-skill/
├── README.md                    ← English
├── README_CN.md                 ← 中文文档
├── README_KR.md                 ← 지금 보고 있는 문서
├── LICENSE                      ← MIT
├── CHANGELOG.md                 ← 버전 이력
├── install.sh                   ← 원라인 설치 스크립트
├── skills/
│   ├── seo/SKILL.md             ← 오케스트레이터 (24개 하위 스킬 라우팅)
│   ├── seo-audit/SKILL.md       ← 80개 규칙 전체 사이트 감사
│   ├── seo-keyword-research/    ← 키워드 리서치 방법론
│   ├── seo-competitor-analysis/ ← 경쟁사 인텔리전스 프레임워크
│   ├── seo-geo/SKILL.md         ← GEO / AI Overview 최적화
│   ├── seo-local/SKILL.md       ← 로컬 SEO + GBP
│   └── ... (총 25개 스킬 디렉토리)
├── agents/
│   └── seo*.md                  ← 27개 전문 Claude 에이전트
└── references/
    ├── eeat-framework.md        ← E-E-A-T 평가 프레임워크
    ├── keyword-difficulty.md    ← KD 점수 + 업종별 벤치마크
    ├── cwv-thresholds.md        ← Core Web Vitals 기준값
    ├── schema-types.md          ← Schema.org 유형 레퍼런스
    ├── backlink-metrics.md      ← 백링크 품질 지표
    ├── quality-gates.md         ← 콘텐츠 품질 기준
    ├── mcp-quality.md           ← MCP 서버 품질 표준
    ├── openapi-compliance.md    ← OpenAPI 준수 레퍼런스
    └── agent-user-agents.md     ← AI 크롤러 User Agent 목록
```

---

## 지원 플랫폼

Claude Code 호환 환경이라면 어디서든 사용할 수 있습니다:

| 플랫폼 | 상태 | 비고 |
|--------|------|------|
| **Claude Code** | ✅ 완전 지원 | `~/.claude/skills/`에 복사 |
| **OpenClaw** | ✅ 완전 지원 | `claw install seo-suite` |
| **Cursor** | ✅ 완전 지원 | `.cursor/skills/`에 복사 |
| **Kiro** | ✅ 완전 지원 | `.kiro/skills/`에 복사 |
| **OpenCode** | ✅ 완전 지원 | skills 디렉토리에 복사 |

---

## 버전 이력

| 버전 | 주요 변경 사항 |
|------|---------------|
| **v4.0** | +seo-keyword-research, +seo-competitor-analysis, +seo-local; seo-audit에 80개 감사 규칙 추가; seo-geo에 Princeton KDD 2024 GEO 연구 반영; +keyword-difficulty.md 레퍼런스 |
| v3.0 | +seo-geo (AI Overview), +seo-agent (AEO), +seo-multiplatform, +seo-programmatic, +seo-local |
| v2.0 | +seo-rank-tracker, +seo-monitor, +seo-report, +seo-data-tools; 9개 레퍼런스 파일 |
| v1.0 | 핵심 15개 스킬: audit, technical, performance, content, schema, images, page, backlinks, sitemap, hreflang, competitor-pages, content-brief, plan, visual |

---

## 기여 방법

25개 스킬 파일은 모두 일반 Markdown입니다 — 빌드 과정이 필요 없습니다.

1. 이 저장소를 Fork합니다
2. `skills/*/SKILL.md` 또는 `agents/*.md`를 수정합니다
3. 변경 내용, 변경 이유, 가능하면 테스트 케이스를 포함해 PR을 엽니다

**특히 가치 있는 기여:**
- 측정된 효과 데이터가 포함된 새로운 GEO 전략
- 새로운 SERP 피처 추적 방법 (AI Overview는 빠르게 변화 중)
- 업종별 SEO 규칙 세트 (이커머스, SaaS, 로컬, 미디어)
- 새로운 AI 검색 엔진 대응 (Perplexity, ChatGPT Search, Gemini)

---

## 커뮤니티

<div align="center">

SEO × AI 실무자 커뮤니티에 참여하세요

| 중국어 커뮤니티 | 영어 커뮤니티 |
|:--------------:|:------------:|
| <img src="https://clawpond.com/wechat-qr-zh-v3.jpg" width="120" alt="WeChat QR (Chinese)"> | <img src="https://clawpond.com/wechat-qr-en.png" width="120" alt="WeChat QR (English)"> |
| 中文交流群 | English Group |
| SEO 실전 + 스킬 토론 | GEO 연구 + 스킬 업데이트 |

> WeChat 그룹은 주로 중국어 사용자 커뮤니티를 위한 채널입니다. 영어 그룹을 통해 글로벌 참여가 가능합니다.

**주간 커뮤니티 활동:**
- 🔍 데이터 기반 실제 사이트 SEO 사례 연구
- 📊 GEO 리서치: AI Overview 규칙 변경 동향
- 🛠 스킬 업데이트 공지
- 💬 Q&A: 전략 + 스킬 활용법

</div>

---

## 인용

본 스킬 모음의 GEO 연구 데이터를 사용하시는 경우, 아래를 인용해 주세요:

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

## 라이선스

MIT © [OpenClaw](https://clawpond.com)

자유롭게 사용하세요. 기여를 환영합니다. 더 나은 SEO 워크플로우를 함께 만들어 갑시다.

---

<div align="center">
  <sub>Built by <a href="https://clawpond.com">OpenClaw</a> · <a href="https://clawpond.com/seo-skill">랜딩 페이지</a> · <a href="https://clawpond.com/blog/claude-seo-skill-suite-25-in-1">블로그 포스트</a></sub>
</div>
