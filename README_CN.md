# 🔍 claude-seo-skill（中文文档）

<div align="center">

**25 个 Claude 技能，SEO 全链路自动化**

关键词研究 · 内容生产 · 技术审计 · GEO/AI Overview · 外链 · 排名监控

[![GitHub Stars](https://img.shields.io/github/stars/leofankm/claude-seo-skill?style=flat-square&logo=github&color=2563eb)](https://github.com/leofankm/claude-seo-skill/stargazers)
[![版本](https://img.shields.io/badge/版本-4.0.0-2563eb?style=flat-square)](https://github.com/leofankm/claude-seo-skill/releases)
[![License](https://img.shields.io/badge/协议-MIT-22c55e?style=flat-square)](LICENSE)

[**落地页**](https://clawpond.com/seo-skill) · [**博客文章**](https://clawpond.com/blog/claude-seo-skill-suite-25-in-1) · [**English README**](README.md)

</div>

---

## 核心问题

SEO 工具链是碎片化的。

关键词工具不认识你的审计结果。内容策略不知道你的外链缺口。排名追踪器不知道你的 GEO 状态。

更严重的是：**AI Overview 正在占据搜索结果首屏，传统 SEO 流量平均下降 34-46%**，但大多数 SEO 工具还没有认真对待这件事。

## 解决方案

一个统一的 Claude 对话上下文 + 25 个专项技能 = SEO 全流程，终于可以真正串联。

---

## 25 个技能一览

| # | 技能 | 核心功能 | 命令 |
|---|------|---------|------|
| 1 | `seo`（编排器） | SEO 全链路协调，路由到 24 个子技能 | `/seo <命令>` |
| 2 | `seo-plan` | SEO 战略规划 + 12 个月路线图 | `/seo plan <domain>` |
| 3 | `seo-agent` | Agent Engine Optimization（AEO） | `/seo agent <url>` |
| 4 | `seo-keyword-research` | 种子词扩展→主题集群，意图分类，优先级排序 | `/seo keywords <话题>` |
| 5 | `seo-data-tools` | DataForSEO / GSC / GA4 API 集成 | `/seo data <查询>` |
| 6 | `seo-competitor-analysis` | 竞品关键词差距、SOV、SWOT 分析 | `/seo competitors <domain>` |
| 7 | `seo-content-brief` | SERP 驱动的内容简报，含竞品缺口分析 | `/seo brief <关键词>` |
| 8 | `seo-content` | E-E-A-T 多维评分，薄内容检测 | `/seo content <url>` |
| 9 | `seo-geo` | **GEO / AI Overview 优化**（Princeton KDD 2024） | `/seo geo <url>` |
| 10 | `seo-schema` | JSON-LD 结构化数据自动生成（15+ 类型） | `/seo schema <url>` |
| 11 | `seo-images` | 图片 SEO + Google Lens 视觉搜索优化 | `/seo images <url>` |
| 12 | `seo-page` | 单页深度 On-Page 分析，Featured Snippet 机会 | `/seo page <url>` |
| 13 | `seo-audit` | **80 条规则全站审计，7 大类别** | `/seo audit <url>` |
| 14 | `seo-technical` | 技术 SEO 8 大类专项检查 | `/seo technical <url>` |
| 15 | `seo-performance` | Core Web Vitals：LCP、INP、CLS | `/seo performance <url>` |
| 16 | `seo-sitemap` | XML Sitemap 审计与生成 | `/seo sitemap <url>` |
| 17 | `seo-hreflang` | 多语言/国际化 SEO hreflang 验证 | `/seo hreflang <url>` |
| 18 | `seo-backlinks` | 外链分析 + 竞品链接差距发现 | `/seo backlinks <domain>` |
| 19 | `seo-competitor-pages` | SEO 优化的竞品对比落地页自动生成 | `/seo vs <url1> <url2>` |
| 20 | `seo-monitor` | 排名波动、技术退化、竞品新动作智能预警 | `/seo monitor <domain>` |
| 21 | `seo-rank-tracker` | 排名 + SERP 特性（AI Overview）追踪 | `/seo rank <关键词>` |
| 22 | `seo-report` | 周报/月报/季报自动化生成 | `/seo report <domain>` |
| 23 | `seo-multiplatform` | TikTok / YouTube / Reddit / 视觉搜索 SEO | `/seo multiplatform <品牌>` |
| 24 | `seo-programmatic` | 程序化 SEO 规划 | `/seo programmatic <领域>` |
| 25 | `seo-local` | 本地 SEO + Google Business Profile 优化 | `/seo local <商家>` |

---

## GEO / AI Overview

> **Google AI Overview 正在占据搜索结果首屏，传统 SEO 流量平均下降 34-46%。**

这套技能套装是目前唯一系统性覆盖 GEO 优化的 Claude 技能套装，理论支撑来自 Princeton 大学 KDD 2024 学术研究（Aggarwal et al.）。

**9 个 GEO 优化策略实测效果：**

| 策略 | AI 引用率变化 | 难度 |
|------|-------------|------|
| 引用来源（Cite Sources） | **+30–40%** | 低 |
| 添加统计数据 | **+25–35%** | 低 |
| 引用权威专家 | +20–30% | 中 |
| 流畅性优化 | +15–25% | 低 |
| 简化语言 | +10–20% | 低 |
| 结构化内容 | +10–20% | 低 |
| 多模态内容 | +15–25% | 高 |
| 添加专业术语 | +5–15% | 中 |
| 关键词堆砌 ❌ | −15–25% | 避免 |

---

## 快速安装

### 方式一：OpenClaw 技能市场（推荐）
```bash
claw install seo-suite
```

### 方式二：手动安装
```bash
git clone https://github.com/leofankm/claude-seo-skill
cd claude-seo-skill
cp -r skills/seo* ~/.claude/skills/
cp -r agents/seo* ~/.claude/agents/
```

### 方式三：一键安装脚本
```bash
curl -sSL https://raw.githubusercontent.com/leofankm/claude-seo-skill/main/install.sh | bash
```

---

## 快速开始

```bash
# 第一步：了解网站健康状态（10 分钟）
/seo audit https://你的网站.com

# 第二步：发现关键词机会
/seo keywords "你的核心业务词"

# 第三步：生成内容简报
/seo brief "目标关键词"

# 第四步：评估 AI 搜索可见性
/seo geo https://你的重要页面.com
```

---

## 社群

<div align="center">

扫码加入 SEO × AI 实践社群

| 中文交流群 | 英文社群 |
|:---------:|:-------:|
| <img src="https://clawpond.com/wechat-qr-zh-v3.jpg" width="120" alt="微信群二维码"> | <img src="https://clawpond.com/wechat-qr-en.png" width="120" alt="WeChat English QR"> |
| SEO 实践 + 技能讨论 | GEO research + updates |

**每周社群内容：**
- 真实站点 SEO 案例分析（含数据）
- GEO 研究速报：AI Overview 规则变化追踪
- 技能更新第一时间通知
- 提问答疑：策略 + 技能使用

</div>

---

## 许可证

MIT © [OpenClaw](https://clawpond.com)

自由使用，欢迎贡献。

---

<div align="center">
  <sub>由 <a href="https://clawpond.com">OpenClaw</a> 构建 · <a href="https://clawpond.com/seo-skill">落地页</a> · <a href="https://clawpond.com/blog/claude-seo-skill-suite-25-in-1">博客文章</a></sub>
</div>
