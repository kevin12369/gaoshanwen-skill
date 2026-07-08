# 高善文风格宏观研究与财经分析 SKILL

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/Version-1.0.0-blue.svg)](https://github.com/kevin12369/gaoshanwen-skill/releases/tag/v1.0.0)
[![GitHub stars](https://img.shields.io/github/stars/kevin12369/gaoshanwen-skill?style=social)](https://github.com/kevin12369/gaoshanwen-skill/stargazers)
[![agentskills.io](https://img.shields.io/badge/agentskills.io-Compliant-green.svg)](https://agentskills.io)
[![CI](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml/badge.svg)](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml)
[![Cross-Platform](https://img.shields.io/badge/Agent%20Compat-OpenClaw%20%7C%20Claude%20Code%20%7C%20Cursor%20%7C%20Mavis-blueviolet)]()

> **致敬高善文先生（1971-2026）**
> 一位卓越的宏观经济学家、严谨的研究方法论建设者、风趣而深刻的思想传播者。

> **解释过去头头是道，似乎有理；预测未来躲躲闪闪，误差惊人。**
> —— 横批：经济分析

---

## 项目简介

本项目是一个**完整版、跨平台兼容**的 AI Agent SKILL，用于模拟已故著名经济学家**高善文博士**（1971-2026）的宏观研究框架与表达风格。

**重要说明**：
- 高善文先生于 2026 年 7 月 7 日因外周 T 细胞淋巴癌病逝，享年 55 岁
- 本 SKILL 是对其**公开著作、演讲、报告的分析方法和表达风格的复刻**，用于教育、研究、内容创作
- 所有输出**不代表高善文先生本人观点**，亦不构成任何投资建议

---

## 五大核心分析框架

1. **资产重估理论**（最成熟、最出名）
   - 2006 年 3 月提出（彼时上证 1200 点）
   - 核心：货币过剩 + 产能过剩 + 贸易顺差 → 大类资产价格重估
   - 三阶段：上半场（外贸顺差）→ 下半场（信贷接力）→ 加时赛（资产价格泡沫）

2. **产能周期理论**（基于国际收支）
   - 三阶段：投资扩张+产能不足 → 投资下降+产能扩张 → 投资疲弱+产能收缩
   - 三步观察法：国际收支 → 价格分化 → 产出判断

3. **库存周期**（3-4 年节律）
   - 传导链：需求（领先 14 个月）→ 产出缺口（领先 6 个月）→ 价格（领先 2 个月）
   - 行业分化：上游/中游/下游

4. **通货膨胀分析**（"猪周期"框架）
   - 中国通胀特征：食品价格占 CPI 权重高
   - 刘易斯拐点（2005 年左右）

5. **房地产分析框架**（"三阶段调整"）
   - 房企三阶段商业模式：囤地 → 高周转 → 内涵增长
   - 2024 年最新框架：高周转 → 制造 / 集团 → 项目 / 预售 → 现房

---

## 项目结构

```
gaoshanwen-skill/
├── SKILL.md                          # 核心指令（agentskills.io 规范）
├── README.md                         # 项目说明（本文件）
├── CHANGELOG.md                      # 版本历史
├── LICENSE                           # MIT 许可证
│
├── references/                       # 资料库
│   ├── 01-core-theories.md          # 5 大核心理论详解
│   ├── 02-analysis-frameworks.md    # 框架应用工作流
│   ├── 03-style-and-voice.md        # 表达风格、典型语录
│   ├── 04-key-views-timeline.md     # 2003-2025 关键观点年表
│   ├── 05-publications.md           # 5 部代表作索引
│   ├── 06-glossary.md               # 术语表
│   └── 07-checklist.md              # 风格校准 checklist
│
├── examples/                         # 示例
│   ├── 01-property-3-challenges.md   # 房地产三阶段
│   ├── 02-asset-revaluation-theory.md # 资产重估理论
│   ├── 03-total-demand-debate.md    # 总需求两派意见
│   ├── 04-overcapacity-and-spillover.md # 产能过剩
│   ├── 05-a-share-strategy.md       # A 股策略
│   ├── 06-self-deprecating-couplet.md # 招牌对联
│   └── 07-style-calibration.md      # 风格校准对比
│
└── scripts/                          # 辅助脚本
    ├── validate-skill.ps1           # 跨平台规范校验
    └── test-prompts.json            # 测试提示词
```

---

## 跨平台兼容性

本 SKILL 兼容以下 Agent 工具：

- ✅ **OpenClaw** — 自动扫描 `~/.openclaw/skills/`
- ✅ **Hermes Agent** — 自动加载 `skills/`
- ✅ **Claude Code** — `.claude/skills/` 或 `~/.claude/skills/`
- ✅ **Trae** — `.trae/skills/`
- ✅ **Codex** — `$CODEX_HOME/skills/`
- ✅ **Cursor** — `.cursor/skills/` 或 `~/.cursor/skills/`
- ✅ **Mavis** — `~/.mavis/skills/`（本项目默认同步）
- ✅ **其他 agentskills.io 兼容工具**

---

## 安装方法

### 方法 1：项目级安装（推荐给个人项目）

```bash
# OpenClaw / Claude Code / Cursor / Codex
cp -r gaoshanwen-skill/ .claude/skills/gaoshanwen/
# 或
cp -r gaoshanwen-skill/ .cursor/skills/gaoshanwen/
```

### 方法 2：全局安装（推荐给所有项目共享）

```bash
# macOS / Linux
cp -r gaoshanwen-skill/ ~/.claude/skills/gaoshanwen/
cp -r gaoshanwen-skill/ ~/.openclaw/skills/gaoshanwen/

# Windows (PowerShell)
Copy-Item -Recurse gaoshanwen-skill/ "$env:USERPROFILE\.claude\skills\gaoshanwen\"
```

### 方法 3：gh skill 安装（如果支持）

```bash
gh skill install <repo> --skill gaoshanwen
```

### 方法 4：npx skills 安装

```bash
npx skills add <this-repo>
```

---

## 使用方法

### 在 Claude Code 中使用

```bash
# 安装到项目
cp -r gaoshanwen-skill/ .claude/skills/gaoshanwen/

# 调用（自动触发）
"用高善文视角分析当前 A 股市场"
"按高善文资产重估框架分析当前大类资产"
"模拟高善文 2024 中期策略会风格写一段演讲"
```

### 在 OpenClaw 中使用

```bash
# 安装
cp -r gaoshanwen-skill/ ~/.openclaw/skills/gaoshanwen/

# 调用
/gaoshanwen 帮我分析当前房地产调整
```

### 在 Cursor 中使用

```bash
# 安装到项目
cp -r gaoshanwen-skill/ .cursor/skills/gaoshanwen/

# 在 Composer 中使用
"用高善文框架分析"
"按资产重估理论分析"
```

### 典型 Prompt 模板

```markdown
# 宏观经济研判
"用高善文框架分析当前中国宏观经济运行态势"

# A 股策略
"按高善文资产重估理论分析当前 A 股估值"

# 房地产周期
"用 2024 年外滩金融峰会'三阶段调整'框架分析中国房地产"

# 产能过剩
"按高善文产能周期框架分析新能源车产能过剩争议"

# 通胀分析
"用'猪周期'框架分析当前 CPI 走势"

# 风格仿写
"按高善文风格写一段关于 [主题] 的分析"
"按'经济分析'对联风格写一段收尾"
```

---

## 核心特征

### 招牌风格

- 🎭 **"诸葛亮式"分析师** — 客观分析，不下投资建议
- 🏥 **"病症 vs 病灶"思维** — 找结构性原因，不停留表面
- 🦌 **"君子豹变"** — 灵活切换观点，不死守立场
- 📜 **招牌对联** — "经济分析"对联结尾

### 招牌比喻

- 🛣️ **高速公路开车** — 经济转型
- ⚽ **足球赛三阶段** — 资产重估
- 👨‍⚕️ **病症与病灶** — 指标 vs 结构
- 🧙 **诸葛亮 vs 刘备** — 分析师 vs 投资者

### 招牌观点

- 💹 "资产重估"理论
- 🏠 "房地产三阶段调整"
- 🏭 "产能过剩是新兴行业绕不开的阶段"
- 🐷 "猪周期"通胀框架
- 🇨🇳 "中国冲击 2.0"分析

---

## 代表作引用

| 著作 | 出版年 | 核心贡献 |
|---|---|---|
| 《在周期的拐点上》 | 2006 | 早期方法论基础 |
| 《透视繁荣：资产重估深处的忧虑》 | 2007 | 资产重估理论集大成 |
| 《2008 年中国 A 股投资策略》 | 2008 | 行业分析方法 |
| 《经济运行的逻辑》 | 2013 | 完整方法论体系 |
| 《经济运行的真相》 | 2020 | 最新框架演进 |

详见 [`references/05-publications.md`](references/05-publications.md)

---

## 风格校准

每个 AI 模拟输出都应通过 [`references/07-checklist.md`](references/07-checklist.md) 的逐项检查：

- ✅ 敢下判断（不和稀泥）
- ✅ 数据翔实（具体数字、月份、行业）
- ✅ 逻辑严密（立论 → 举证 → 边界 → 不确定性）
- ✅ 至少 1 个生动比喻
- ✅ 讨论边界条件
- ✅ 承认不确定性
- ✅ 保持分析师定位
- ✅ 文末"经济分析"对联
- ✅ AI 模拟声明 + 免责声明

---

## 合规与免责

### 使用本 SKILL 的合规要求

1. ✅ **必须标注 AI 模拟**：所有输出需明确为"AI 模拟高善文风格"
2. ✅ **不构成投资建议**：所有输出需明确"不构成投资建议"
3. ✅ **不预测具体点位**：避免具体点位预测（如"上证将到 5000 点"）
4. ✅ **不推荐具体股票**：避免"买入 XX 股票"
5. ✅ **不拼接个人观点**：用"按高善文框架分析"而非"高善文认为"
6. ✅ **不虚构未公开讲话**：只引用可查证的公开材料
7. ✅ **尊重已故者**：措辞庄重，致敬高善文先生

### 详细免责声明

本 SKILL 旨在保存和传承高善文先生的分析方法和表达风格，供研究者、投资者、内容创作者学习参考。

- 本 SKILL **不**是高善文先生的替代
- 本 SKILL **不**代表高善文先生本人观点
- 本 SKILL **不**构成任何投资建议
- 使用本 SKILL 产生的任何内容，**不代表高善文先生或其家属的立场**
- 基于本 SKILL 输出做出的任何投资决策，**风险由用户自担**

---

## 致谢

本 SKILL 的诞生离不开高善文先生 30 年来对宏观研究方法论的卓越贡献。

高善文先生于 2026 年 7 月 7 日因病逝世。他的离去是中国宏观研究领域的重大损失，但其分析方法、思想遗产将持续影响后来者。

**致敬**：
- 高善文先生的家人和亲友
- 安信证券 / 国投证券研究团队
- 中国金融四十人论坛（CF40）
- 《新财富》《证券市场周刊》等评选机构
- 无数从高善文先生研究中获益的研究者和投资者

---

## 贡献指南

### 报告问题

如果发现：
- 风格校准不准确
- 引用错误
- 不符合 agentskills.io 规范
- 合规问题

请提交 Issue。

### 改进建议

欢迎：
- 补充更多典型 Prompt 模板
- 增加边界情况处理
- 优化风格校准 checklist
- 完善参考资料库

### 提交规范

- 保持高善文风格的真实性
- 严格遵守合规要求
- 所有引用必须可查证
- 显著标注 AI 模拟性质

---

## 许可证

MIT License - 自由使用、修改、分发，需保留版权声明和致谢。

详见 [LICENSE](LICENSE)

---

## 相关资源

### 高善文先生著作

- 《在周期的拐点上》（2006）
- 《透视繁荣：资产重估深处的忧虑》（2007）
- 《2008 年中国 A 股投资策略》（2008）
- 《经济运行的逻辑》（2013）
- 《经济运行的真相》（2020）

### 公开演讲与报告

- 多次《新财富》获奖感言
- 多次《证券市场周刊》水晶球奖
- 2024 年 9 月 7 日第六届外滩金融峰会
- 2024 年 5 月 25 日 CF40 双周研讨会

### 媒体报道

- 上海证券报、界面新闻、中国基金报、东方财富网、新浪财经、澎湃新闻、智通财经、钛媒体等

---

## 版本

- **1.0.0** (2026-07-08): 初版发布
  - 完整版：含 5 大框架、风格校准、代表作索引、7+ 示例
  - 跨平台兼容：OpenClaw / Hermes / Claude Code / Trae / Codex / Cursor / Mavis
  - 合规边界：AI 模拟声明 + 免责声明

---

## 联系

本项目由 mavis (Mavis Agent) 创建。

如有问题或建议，请提交 Issue。

---

> 解释过去头头是道，似乎有理；
> 预测未来躲躲闪闪，误差惊人。
> —— 横批：经济分析

**致敬高善文先生（1971-2026）**
