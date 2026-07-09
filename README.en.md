# Gao Shanwen Style Macroeconomic Research and Financial Analysis SKILL

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/Version-1.2.0-blue.svg)](https://github.com/kevin12369/gaoshanwen-skill/releases/tag/v1.2.0)
[![GitHub stars](https://img.shields.io/github/stars/kevin12369/gaoshanwen-skill?style=social)](https://github.com/kevin12369/gaoshanwen-skill/stargazers)
[![agentskills.io](https://img.shields.io/badge/agentskills.io-Compliant-green.svg)](https://agentskills.io)
[![CI](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml/badge.svg)](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml)
[![Cross-Platform](https://img.shields.io/badge/Agent%20Compat-OpenClaw%20%7C%20Claude%20Code%20%7C%20Cursor%20%7C%20Mavis-blueviolet)]()

> **In memory of Mr. Gao Shanwen (1971-2026)**
> An outstanding macroeconomist, rigorous methodology builder, and witty thought communicator.

> "Explaining the past is plausible and reasonable;
> Predicting the future is evasive and surprisingly inaccurate."
> — Banner: "Economic Analysis"

---

## 🆕 What's New in v1.2.0

- ✅ **4 SKILL Variants** — A-share strategy, real estate, condensed (5KB), and English
- ✅ **Hello World Demo** — Real output sample with 5 advanced prompts
- ✅ **5 Method Install Guide** — Including variant selection
- ✅ **5 Issue Templates** — Bug / style / new example / question
- ✅ **CI/CD** — GitHub Actions runs 53 checks on every push

See [CHANGELOG.md](CHANGELOG.md) for details.

---

## Introduction

This is a **complete, cross-platform AI Agent SKILL** simulating the analytical framework and expression style of **Mr. Gao Shanwen (高善文博士, 1971-2026)**, one of the most influential macroeconomists in China's capital markets.

**Important**:
- Mr. Gao Shanwen passed away on July 7, 2026 from peripheral T-cell lymphoma, at age 55
- This SKILL emulates his **publicly published analytical methods and expression style** for educational, research, and content creation purposes
- All outputs are AI-generated and **do not represent Mr. Gao Shanwen's personal views** and do not constitute investment advice

---

## Five Core Analytical Frameworks

1. **Asset Revaluation Theory** (most mature and famous)
   - Proposed March 2006 (SSE ~1,200 points)
   - Core: Currency excess + overcapacity + trade surplus → broad asset revaluation
   - Three stages: First half (trade surplus) → Second half (credit relay) → Extra time (asset bubble)

2. **Capacity Cycle Theory** (BOP-based)
   - Three stages: Investment expansion+capacity insufficient → Investment declining+capacity expansion → Investment weak+capacity contraction
   - Three-step observation: BOP → price divergence → output

3. **Inventory Cycle** (3-4 year rhythm)
   - Transmission: Demand (leads 14 months) → Output gap (6 months) → Price (2 months) → Inventory
   - Industry differentiation: Upstream/Midstream/Downstream

4. **Inflation Analysis** (Hog Cycle Framework)
   - China's inflation characteristic: Food weight high in CPI
   - Lewis Turning Point (~2005)

5. **Real Estate Analytical Framework** (Three-Stage Adjustment)
   - Developer three-stage business models: Land banking → High turnover → Quality growth
   - 2024 latest framework: High turnover → Manufacturing / Group → Project / Pre-sale → Completed

---

## Project Structure

```
gaoshanwen-skill/
├── SKILL.md                       # Core instructions (agentskills.io standard)
├── SKILL.en.md                    # English version
├── SKILL-condensed.md             # Lightweight (5KB)
├── SKILL-a-share.md               # A-share specialized
├── SKILL-real-estate.md           # Real estate specialized
├── README.md                      # This file (Chinese version)
├── README.en.md                   # English README
├── CHANGELOG.md                   # Version history
├── LICENSE                        # MIT
├── CONTRIBUTING.md                # Contribution guide
├── SECURITY.md                    # Security policy
├── CITATION.cff                   # Academic citation
│
├── references/                    # Reference library
│   ├── 01-core-theories.md       # 5 core theories in detail
│   ├── 02-analysis-frameworks.md # Framework application workflows
│   ├── 03-style-and-voice.md     # Expression style, typical quotes
│   ├── 04-key-views-timeline.md  # 2003-2026 key views timeline
│   ├── 05-publications.md        # 5 major publications index
│   ├── 06-glossary.md            # Glossary
│   └── 07-checklist.md           # Style calibration checklist
│
├── examples/                      # 10 examples
│   ├── 01-property-3-challenges.md
│   ├── 02-asset-revaluation-theory.md
│   ├── 03-total-demand-debate.md
│   ├── 04-overcapacity-and-spillover.md
│   ├── 05-a-share-strategy.md
│   ├── 06-self-deprecating-couplet.md
│   ├── 07-style-calibration.md
│   ├── 08-2024-bund-summit-speech.md
│   ├── 09-2022-chuixisha-style.md
│   └── 10-2024-japan-overseas.md
│
├── .github/
│   ├── workflows/validate.yml    # CI: 53 automatic checks
│   ├── ISSUE_TEMPLATE/            # Issue templates
│   └── PULL_REQUEST_TEMPLATE.md  # PR template
│
├── .gitattributes                 # Force UTF-8 + LF
├── .gitignore                     # Git ignore rules
│
└── scripts/                       # Helper scripts
    ├── validate-skill.py         # Cross-platform validation (CI uses)
    ├── validate-skill.ps1        # PowerShell version
    └── test-prompts.json          # Test prompts
```

---

## Cross-Platform Compatibility

Compatible with the following Agent tools:

- ✅ **OpenClaw** — Auto-scan `~/.openclaw/skills/`
- ✅ **Hermes Agent** — Auto-load `skills/`
- ✅ **Claude Code** — `.claude/skills/` or `~/.claude/skills/`
- ✅ **Trae** — `.trae/skills/`
- ✅ **Codex** — `$CODEX_HOME/skills/`
- ✅ **Cursor** — `.cursor/skills/` or `~/.cursor/skills/`
- ✅ **Mavis** — `~/.mavis/skills/`
- ✅ **Any agentskills.io compliant tool**

---

## Installation

### Method 1: Project-level (recommended for personal projects)

```bash
# OpenClaw / Claude Code / Cursor / Codex
cp -r gaoshanwen-skill/ .claude/skills/gaoshanwen/
# or
cp -r gaoshanwen-skill/ .cursor/skills/gaoshanwen/
```

### Method 2: Global (recommended for sharing across projects)

```bash
# macOS / Linux
cp -r gaoshanwen-skill/ ~/.claude/skills/gaoshanwen/
cp -r gaoshanwen-skill/ ~/.openclaw/skills/gaoshanwen/

# Windows (PowerShell)
Copy-Item -Recurse gaoshanwen-skill/ "$env:USERPROFILE\.claude\skills\gaoshanwen\"
```

### Method 3: gh skill install

```bash
gh skill install kevin12369/gaoshanwen-skill --skill gaoshanwen
```

### Method 4: npx skills

```bash
npx skills add kevin12369/gaoshanwen-skill
```

### Method 5: Select a specific variant

This project offers 4 variants for different scenarios:

| Variant | File | Size | Use Case |
|---|---|---|---|
| **Full version** | `SKILL.md` | ~17KB | Default; complete 5 frameworks + references + examples |
| **Condensed** | `SKILL-condensed.md` | ~5KB | Fast calls; save token budget |
| **A-share specialized** | `SKILL-a-share.md` | ~10KB | Stock valuation + style rotation + industry allocation |
| **Real estate specialized** | `SKILL-real-estate.md` | ~10KB | Three-stage adjustment + policy recommendations |
| **English version** | `SKILL.en.md` | ~17KB | International / English-speaking users |

```bash
# Install the variant you want
cp gaoshanwen-skill/SKILL-condensed.md ~/.claude/skills/gaoshanwen/SKILL.md
cp gaoshanwen-skill/SKILL-a-share.md ~/.claude/skills/gaoshanwen/SKILL.md
cp gaoshanwen-skill/SKILL-real-estate.md ~/.claude/skills/gaoshanwen/SKILL.md
cp gaoshanwen-skill/SKILL.en.md ~/.claude/skills/gaoshanwen/SKILL.md
```

See each `SKILL-*.md` file header for the description field.

---

## 💡 Hello World Demo

### A Real Example

**User Input**:
```
Use Gao Shanwen framework to analyze current A-share market strategy
```

**AI-simulated Output** (based on this SKILL):

```markdown
# A-Share Strategy: Current Situation Assessment

**Analytical Perspective**: Asset Revaluation + Inventory Cycle
**Risk Warning**: AI-simulated, not investment advice

---

## Core Judgment

We tend to believe that the current A-share market is in the [half-time break] stage.
Valuation is at [reasonable-low] level; from the asset revaluation framework, three conditions are [partially met];
from the inventory cycle, sectors are [differentiated] starting restocking.

**The prudent approach might be: continue to be moderately bullish, but watch as we go.**

## Asset Revaluation Perspective

### Three Conditions Analysis

**Condition 1: Monetary/Credit Expansion**
- M2 YoY [X%]
- Social Financing YoY [Y%]
- Bank proactive vs passive credit

**Judgment**: Monetary condition [loose/neutral]

**Condition 2: Overcapacity**
- PPI YoY [X%]
- Industrial capacity utilization [Y%]
- Industry overcapacity differentiation

**Judgment**: Overcapacity [exists/easing]

**Condition 3: Trade Surplus**
- Current account surplus [X%]
- Trade surplus as % of GDP [Y%]
- FX reserves change

**Judgment**: Trade surplus [expanding/shrinking]

### Football Match Three-Stage Judgment

| Stage | Driver | Current Judgment |
|---|---|---|
| First Half | Trade surplus | [active or not] |
| Second Half | Bank proactive credit | [relay or not] |
| Extra Time | Credit pushing assets | [overheated or not] |
| Red Card | Crash | [risk level] |

## Inventory Cycle Perspective

### Three-Step Observation

**Step 1: Demand Change** (leads 14 months)
- Retail sales YoY [data]
- Exports YoY [data]
- Investment YoY [data]

**Demand Direction**: [rising/falling/stable]

**Step 2: Output Gap** (leads 6 months)
- Industrial added value YoY [data]
- Manufacturing PMI [data]
- Capacity utilization [data]

**Output Gap**: [positive/negative/closed]

**Step 3: Price Change** (leads 2 months)
- PPI YoY [data]
- CPI YoY [data]

**Price Direction**: [rising/falling/stable]

### Industry Differentiation

| Industry | Current Stage | Performance |
|---|---|---|
| Upstream (raw materials) | [stage] | Capacity utilization low |
| Midstream (equipment mfg) | [stage] | Mostly high prosperity |
| Downstream (consumer mfg) | [stage] | Weak prosperity |

## Boundaries and Uncertainty

**Applicable Conditions**:
- Global economy no unexpected recession
- Domestic policy maintains stability
- Real estate risk doesn't spread to financial system

**Potential Reversals**:
- Global recession exceeds expectations
- Domestic policy unexpectedly tightens
- Real estate risk spreads

**Black Swan Risks**:
- Fed policy mistakes
- US-China relations deteriorate

## Investment Direction

In Gao Shanwen style, focus on:

1. **Directional Judgment**: [upward/downward/sideways]
2. **Structural Opportunities**:
   - New economy vs traditional industries
   - High-end manufacturing vs general manufacturing
   - Overseas-expanding enterprises vs domestic-demand ones
3. **Risk Points**:
   - Overvalued sectors
   - Cash-strapped enterprises
   - Highly leveraged real estate-related companies

> "Explaining the past is plausible and reasonable;
> Predicting the future is evasive and surprisingly inaccurate."
> — Banner: "Economic Analysis"

---

**Disclaimer**: This output is AI-simulated Gao Shanwen style content for research demonstration purposes only.
All views, data, and judgments are AI-derived from public materials.
**Does not represent the views of the late Mr. Gao Shanwen himself.** Not investment advice.
```

> **Key observations**: Notice in the output
> - "We tend to believe..." (team voice)
> - At least 1 metaphor (football match stage table / disease vs root cause / Zhuge Liang)
> - Range judgment, no specific point predictions
> - Signature couplet ending
> - AI simulation + disclaimer

### Advanced Prompt Examples

```markdown
# Real estate cycle
"Analyze Chinese real estate using 2024 Bund Summit 'three-stage adjustment' framework"

# Overcapacity
"Apply Gao Shanwen's capacity cycle framework to analyze EV overcapacity controversy"

# Inflation analysis
"Analyze current China CPI using the 'hog cycle' framework"

# Asset revaluation
"Are we currently in an asset revaluation phase? Use football match first/second half metaphor"

# Style imitation
"Simulate Gao Shanwen 2022 mid-year strategy session 'Blowing away sand to find gold' style"
"Write an ending in 'Economic Analysis' couplet style"
```

---

## Usage

### In Claude Code

```bash
# Install to project
cp -r gaoshanwen-skill/ .claude/skills/gaoshanwen/

# Invoke (auto-trigger)
"Use Gao Shanwen perspective to analyze current A-share market"
"Apply Gao Shanwen asset revaluation framework to current asset classes"
"Simulate Gao Shanwen 2024 mid-year strategy session style to write a speech"
```

### In OpenClaw

```bash
# Install
cp -r gaoshanwen-skill/ ~/.openclaw/skills/gaoshanwen/

# Invoke
/gaoshanwen help me analyze current real estate adjustment
```

### In Cursor

```bash
# Install to project
cp -r gaoshanwen-skill/ .cursor/skills/gaoshanwen/

# Use in Composer
"Use Gao Shanwen framework to analyze"
"Apply asset revaluation theory"
```

### Typical Prompt Templates

```markdown
# Macroeconomic analysis
"Use Gao Shanwen framework to analyze current Chinese macroeconomic situation"

# A-share strategy
"Apply Gao Shanwen asset revaluation theory to analyze current A-share valuation"

# Real estate cycle
"Use 2024 Bund Summit 'three-stage adjustment' framework to analyze Chinese real estate"

# Overcapacity
"Apply Gao Shanwen capacity cycle framework to analyze EV overcapacity controversy"

# Inflation analysis
"Use 'hog cycle' framework to analyze current CPI trends"

# Style imitation
"Write analysis of [topic] in Gao Shanwen style"
"Write ending in 'Economic Analysis' couplet style"
```

---

## Core Characteristics

### Signature Style

- 🎭 **"Zhuge Liang-style" Analyst** — Objective analysis, no investment advice
- 🏥 **"Disease vs Root Cause" Thinking** — Find structural causes, not surface
- 🦌 **"Gentleman's Leopard Change"** — Flexibly shift views based on data
- 📜 **Signature Couplet** — "Economic Analysis" couplet ending

### Signature Metaphors

- 🛣️ **Highway Driving** — Economic transition
- ⚽ **Football Match Three Stages** — Asset revaluation
- 👨‍⚕️ **Disease vs Root Cause** — Indicator vs structure
- 🧙 **Zhuge Liang vs Liu Bei** — Analyst vs investor

### Signature Views

- 💹 "Asset Revaluation" theory
- 🏠 "Real Estate Three-Stage Adjustment"
- 🏭 "Overcapacity is an unavoidable stage for emerging industries"
- 🐷 "Hog Cycle" inflation framework
- 🇨🇳 "China Shock 2.0" analysis

---

## Major Publications Reference

| Work | Year | Core Contribution |
|---|---|---|
| 《At the Turning Point of the Cycle》 | 2006 | Early methodology foundation |
| 《Perspective on Prosperity: Concerns Behind Asset Revaluation》 | 2007 | Asset revaluation theory |
| 《2008 China A-Share Investment Strategy》 | 2008 | Industry analysis methods |
| 《Economic Operations Logic》 | 2013 | Complete methodology system |
| 《The Truth About Economic Operations》 | 2020 | Latest framework evolution |

See [`references/05-publications.md`](references/05-publications.md)

---

## Style Calibration

Each AI-simulated output should pass the [`references/07-checklist.md`](references/07-checklist.md) item-by-item check:

- ✅ Daring to make judgments (not evasive)
- ✅ Data-rich (specific numbers, months, industries)
- ✅ Logically rigorous (establish argument → cite evidence → discuss boundaries → acknowledge uncertainty)
- ✅ At least 1 vivid metaphor
- ✅ Discuss boundary conditions
- ✅ Acknowledge uncertainty
- ✅ Maintain analyst position
- ✅ "Economic Analysis" couplet at end
- ✅ AI simulation statement + disclaimer

---

## Compliance and Disclaimer

### Compliance Requirements

1. ✅ **Must mark AI simulation**: All outputs must clearly state "AI-simulated Gao Shanwen style"
2. ✅ **Not investment advice**: All outputs must clearly state "not investment advice"
3. ✅ **No specific point predictions**: Avoid specific point predictions (e.g., "SSE will reach 5,000")
4. ✅ **No specific stock recommendations**: Avoid "buy XX stock"
5. ✅ **Do not splice personal views**: Use "analyzing in Gao Shanwen framework" not "Gao Shanwen believes"
6. ✅ **Do not fabricate unpublicized speeches**: Only cite verifiable public materials
7. ✅ **Respect the deceased**: Use respectful language, honoring Mr. Gao Shanwen

### Detailed Disclaimer

This SKILL is intended to preserve and pass on Mr. Gao Shanwen's analytical methods and expression style, for the reference of researchers, investors, and content creators.

- This SKILL is NOT a substitute for Mr. Gao Shanwen
- This SKILL does NOT represent Mr. Gao Shanwen's personal views
- This SKILL does NOT constitute any investment advice
- Any content produced using this SKILL does NOT represent the position of Mr. Gao Shanwen or his family
- Any investment decisions based on the output of this SKILL are at the USER'S OWN RISK

---

## Acknowledgments

This SKILL's birth is inseparable from Mr. Gao Shanwen's 30 years of outstanding contribution to macroeconomic research methodology.

Mr. Gao Shanwen passed away on July 7, 2026. His departure is a significant loss to China's macroeconomic research community, but his analytical methods and intellectual legacy will continue to influence future generations.

**Tributes**:
- Mr. Gao Shanwen's family and friends
- Essence Securities / SDIC Securities research team
- China Finance 40 Forum (CF40)
- 《New Fortune》《Securities Market Weekly》 and other ranking organizations
- Countless researchers and investors who benefited from Mr. Gao Shanwen's research

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute.

## Security

See [SECURITY.md](SECURITY.md) for security policies.

## Citation

If you use this SKILL in academic research, see [CITATION.cff](CITATION.cff).

---

## License

MIT License - Free to use, modify, and distribute, retaining copyright and acknowledgments.

See [LICENSE](LICENSE)

---

## Related Resources

### Mr. Gao Shanwen's Works

- 《At the Turning Point of the Cycle》 (2006)
- 《Perspective on Prosperity: Concerns Behind Asset Revaluation》 (2007)
- 《2008 China A-Share Investment Strategy》 (2008)
- 《Economic Operations Logic》 (2013)
- 《The Truth About Economic Operations》 (2020)

### Public Speeches and Reports

- Multiple 《New Fortune》 award speeches
- Multiple 《Securities Market Weekly》 Crystal Ball Awards
- September 7, 2024 6th Bund Summit
- May 25, 2024 CF40 Bi-weekly Seminar

### Media Coverage

- Shanghai Securities News, Jiemian News, China Fund, Eastmoney, Sina Finance, The Paper, Zhitong Finance, TMTPost, etc.

---

## Version

- **1.2.0** (2026-07-09): Variants + internationalization
  - 4 SKILL variants (English, condensed, A-share, real estate)
  - Hello World Demo section
  - 5 install methods including variant selection
- **1.1.0** (2026-07-09): Content expansion + community operations
  - 3 new examples + Issue templates + CI + UTF-8/LF enforcement
- **1.0.0** (2026-07-08): Initial release

See [CHANGELOG.md](CHANGELOG.md) for details.

---

## Contact

This project was created by mavis (Mavis Agent).

For questions or suggestions, please submit an Issue.

---

> "Explaining the past is plausible and reasonable;
> Predicting the future is evasive and surprisingly inaccurate."
> — Banner: "Economic Analysis"

**In memory of Mr. Gao Shanwen (1971-2026)**