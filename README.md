# 高善文风格宏观研究与财经分析 SKILL

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/Version-1.1.0-blue.svg)](https://github.com/kevin12369/gaoshanwen-skill/releases/tag/v1.1.0)
[![GitHub stars](https://img.shields.io/github/stars/kevin12369/gaoshanwen-skill?style=social)](https://github.com/kevin12369/gaoshanwen-skill/stargazers)
[![agentskills.io](https://img.shields.io/badge/agentskills.io-Compliant-green.svg)](https://agentskills.io)
[![CI](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml/badge.svg)](https://github.com/kevin12369/gaoshanwen-skill/actions/workflows/validate.yml)
[![Cross-Platform](https://img.shields.io/badge/Agent%20Compat-OpenClaw%20%7C%20Claude%20Code%20%7C%20Cursor%20%7C%20Mavis-blueviolet)]()

> **致敬高善文先生（1971-2026）**
> 一位卓越的宏观经济学家、严谨的研究方法论建设者、风趣而深刻的思想传播者。

> **解释过去头头是道，似乎有理；预测未来躲躲闪闪，误差惊人。**
> —— 横批：经济分析

---

## 🆕 v1.1.0 重大更新

- ✅ **10 个完整示例** — 新增 2024 外滩金融峰会完整圆桌、2022 中期策略会《吹尽狂沙始到金》、2024 日本出海经验对比
- ✅ **5 个 Issue 模板** — Bug 报告 / 风格校准反馈 / 提议新示例 / 一般问题
- ✅ **关键观点年表补全** — 新增 2024.9 外滩、2025.11 离职、2026.7 病逝等关键节点
- ✅ **CI/CD 自动化** — GitHub Actions 跑 53 项校验，每次 push 自动验证
- ✅ **UTF-8 + LF 强制** — `.gitattributes` 防 Windows 编码混乱

详见 [CHANGELOG.md](CHANGELOG.md)

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
│   ├── 04-key-views-timeline.md     # 2003-2026 关键观点年表（含 2025-2026 更新）
│   ├── 05-publications.md           # 5 部代表作索引
│   ├── 06-glossary.md               # 术语表
│   └── 07-checklist.md              # 风格校准 checklist
│
├── examples/                         # 示例（10 个）
│   ├── 01-property-3-challenges.md             # 房地产三阶段调整
│   ├── 02-asset-revaluation-theory.md          # 资产重估理论完整复刻
│   ├── 03-total-demand-debate.md               # 总需求不足两派意见之争
│   ├── 04-overcapacity-and-spillover.md        # 产能过剩与全球溢出
│   ├── 05-a-share-strategy.md                  # A 股策略分析
│   ├── 06-self-deprecating-couplet.md          # 招牌对联
│   ├── 07-style-calibration.md                 # 风格校准示例对比
│   ├── 08-2024-bund-summit-speech.md           # 🆕 2024 外滩金融峰会完整风格
│   ├── 09-2022-chuixisha-style.md              # 🆕 2022《吹尽狂沙始到金》风格
│   └── 10-2024-japan-overseas.md               # 🆕 2024 日本出海经验分析
│
├── .github/                          # GitHub 配置
│   ├── workflows/validate.yml       # 🆕 CI: 53 项自动校验
│   └── ISSUE_TEMPLATE/               # 🆕 Issue 模板
│       ├── config.yml               #   - Issue 选择菜单
│       ├── bug_report.md            #   - Bug 报告
│       ├── style_issue.md           #   - 风格校准反馈
│       ├── add_example.md            #   - 提议新示例
│       └── question.md               #   - 一般问题
│
├── .gitattributes                    # 🆕 强制 UTF-8 + LF（防编码问题）
├── .gitignore                        # Git 忽略规则
│
└── scripts/                          # 辅助脚本
    ├── validate-skill.ps1           # 跨平台规范校验（CI 用）
    └── test-prompts.json            # 10 个测试提示词
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

### 方法 5：选装特定变体

本项目提供 4 个变体满足不同场景：

```bash
# 完整版（默认）- 完整 200KB，含 5 大框架 + 7 份资料 + 10 个示例
cp -r gaoshanwen-skill/SKILL.md ~/.claude/skills/gaoshanwen/SKILL.md

# 精简版（5KB） - 快速调用场景，省 token
cp gaoshanwen-skill/SKILL-condensed.md ~/.claude/skills/gaoshanwen/SKILL.md

# A 股策略专项版 - 聚焦股市估值 + 风格切换 + 行业配置
cp gaoshanwen-skill/SKILL-a-share.md ~/.claude/skills/gaoshanwen/SKILL.md

# 房地产专项版 - 聚焦三阶段调整 + 政策建议
cp gaoshanwen-skill/SKILL-real-estate.md ~/.claude/skills/gaoshanwen/SKILL.md

# 英文版（国际化） - 完整 SKILL 英文翻译
cp gaoshanwen-skill/SKILL.en.md ~/.claude/skills/gaoshanwen/SKILL.md
```

详见各 SKILL-*.md 文件头部的 description 字段。

---

## 💡 Hello World Demo

### 一个真实例子

**用户输入**:
```
用高善文框架分析当前 A 股市场策略
```

**AI 模拟输出**（基于本 SKILL）:

```markdown
# A 股策略：当前态势研判

**分析视角**：资产重估 + 库存周期
**风险提示**：AI 模拟生成，不构成投资建议

---

## 核心判断

我们倾向于认为，当前 A 股市场处于 [中场休息] 阶段。
估值水位 [合理偏低]，从资产重估框架看，三大条件 [部分满足]；
从库存周期看，行业 [分化] 启动补库。

**审慎的做法也许是：不妨继续看多，但要边走边看。**

## 资产重估视角

### 三条件分析

**条件 1：货币信贷扩张**
- M2 同比 [X%]
- 社融同比 [Y%]
- 银行主动信贷 vs 被动信贷

**判断**：货币条件 [宽松/中性]

**条件 2：产能过剩**
- PPI 同比 [X%]
- 工业产能利用率 [Y%]
- 行业产能过剩分化

**判断**：产能过剩 [存在/缓解]

**条件 3：贸易顺差**
- 经常账户顺差 [X%]
- 贸易顺差占 GDP [Y%]
- 外汇储备变化

**判断**：贸易顺差 [扩大/收窄]

### 足球赛三阶段判断

| 阶段 | 驱动力 | 当前判断 |
|---|---|---|
| 上半场 | 外贸顺差 | [是否活跃] |
| 下半场 | 银行主动信贷 | [是否接力] |
| 加时赛 | 信贷推升资产 | [是否过热] |
| 红牌 | 崩盘 | [风险等级] |

## 库存周期视角

### 三步观察法

**步骤 1：需求变化**（领先 14 个月）
- 社零同比 [数据]
- 出口同比 [数据]
- 投资同比 [数据]

**需求方向**：[上升/下降/平稳]

**步骤 2：产出缺口**（领先 6 个月）
- 工业增加值同比 [数据]
- 制造业 PMI [数据]
- 产能利用率 [数据]

**产出缺口**：[正向/负向/闭合]

**步骤 3：价格变化**（领先 2 个月）
- PPI 同比 [数据]
- CPI 同比 [数据]

**价格方向**：[上升/下降/平稳]

### 行业分化

| 行业 | 当前阶段 | 表现 |
|---|---|---|
| 上游（工业原料） | [阶段] | 产能利用率偏低 |
| 中游（装备制造） | [阶段] | 多数高景气 |
| 下游（消费制造） | [阶段] | 景气低迷 |

## 边界与不确定性

**适用条件**：
- 全球经济不出现超预期衰退
- 国内政策保持定力
- 房地产风险不向金融体系传染

**潜在反转**：
- 全球经济衰退超预期
- 国内政策超预期紧缩
- 房地产风险扩散

**黑天鹅风险**：
- 美联储政策失误
- 中美关系恶化

## 投资方向

按高善文风格，应关注：

1. **方向性判断**：[向上/向下/震荡]
2. **结构性机会**：
   - 新经济 vs 传统产业
   - 高端制造业 vs 一般制造业
   - 出海企业 vs 内需企业
3. **风险点**：
   - 估值偏高板块
   - 现金流紧张企业
   - 高杠杆房企上下游

> 解释过去头头是道，似乎有理；
> 预测未来躲躲闪闪，误差惊人。
> —— 横批：经济分析

---

**免责声明**：本文为 AI 模拟高善文风格生成的研究示例，旨在展示其分析框架与表达风格。
所有观点、数据、判断均由 AI 基于公开资料推导，**不代表已故高善文先生本人的真实观点**。
不构成任何投资建议。投资者应独立判断，自负盈亏。
```

> **关键观察**：注意输出中的
> - "我们倾向于认为"（团队语气）
> - 至少 1 个比喻（足球赛阶段表 / 病症 vs 病灶 / 诸葛亮）
> - 区间判断，无具体点位预测
> - 招牌对联收尾
> - AI 模拟声明 + 免责声明

### 进阶 Prompt 示例

```markdown
# 房地产周期
"用 2024 外滩金融峰会'三阶段调整'框架分析中国房地产"

# 产能过剩
"按高善文产能周期框架分析新能源车产能过剩争议"

# 通胀分析
"用'猪周期'框架分析当前 CPI 走势"

# 资产重估
"当前是否处于资产重估阶段？用'足球赛上半场/下半场'比喻分析"

# 风格仿写
"模拟高善文 2022 中期策略会《吹尽狂沙始到金》风格写一段"
"按'经济分析'对联风格写一段收尾"
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

## 📚 项目资源

| 资源 | 说明 |
|---|---|
| [README.en.md](README.en.md) | English README |
| [CONTRIBUTING.md](CONTRIBUTING.md) | 贡献指南 |
| [SECURITY.md](SECURITY.md) | 安全策略 |
| [CHANGELOG.md](CHANGELOG.md) | 版本历史 |
| [examples/INDEX.md](examples/INDEX.md) | 10 个 Examples 分类索引 |
| [CITATION.cff](CITATION.cff) | 学术引用格式（CFF 1.2.0） |
| [references/03-style-and-voice.md](references/03-style-and-voice.md) | 风格详解 |
| [references/04-key-views-timeline.md](references/04-key-views-timeline.md) | 关键观点年表（2003-2026） |
| [references/05-publications.md](references/05-publications.md) | 5 部代表作索引 |
| [references/07-checklist.md](references/07-checklist.md) | 风格校准 checklist |
| [references/08-style-anti-patterns.md](references/08-style-anti-patterns.md) | 风格反例库（什么不像高善文） |
| [FAQ.md](FAQ.md) | 常见问题 |
| [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) | 行为准则 |

---

## 🗺️ Roadmap

> **项目当前状态**: v1.3.0 — 完整治理 + 国际化  
> **下一里程碑**: v2.0.0 — 多 Agent 协作 + 实时数据接入

### ✅ 已完成（v1.0 - v1.3）

- [x] **v1.0.0** — 初版：SKILL.md + 5 大框架 + 7 份 references + 7 个 examples
- [x] **v1.1.0** — 内容扩充：+3 个 examples + Issue 模板 + CI/CD
- [x] **v1.2.0** — 变体 + 国际化：SKILL.en.md + SKILL-condensed + SKILL-a-share + SKILL-real-estate + Hello World Demo
- [x] **v1.3.0** — 项目治理：README.en.md + CONTRIBUTING.md + SECURITY.md + CITATION.cff + PR 模板

### 🚧 进行中（v1.4 - v1.5）

- [ ] **v1.4.0** — 风格校准增强
  - [ ] 反例库 `references/08-style-anti-patterns.md`
  - [ ] 常见问题 FAQ.md
  - [ ] release-drafter 配置（自动生成 release notes）
  - [ ] CODE_OF_CONDUCT.md
  - [ ] Roadmap 章节（本节）

- [ ] **v1.5.0** — 内容深度增强
  - [ ] references/08-style-anti-patterns.md（典型反例）
  - [ ] references/09-data-sources.md（数据源指引）
  - [ ] examples/11-debt-cycle.md（债务周期）
  - [ ] examples/12-hog-cycle-inflation.md（猪周期详细应用）

### 🌟 计划中（v2.0+）

- [ ] **v2.0.0** — 多 Agent 协作
  - [ ] 与 `hot-topic-tracker` 联动
  - [ ] 与 `a-stock-investment-expert` 联动
  - [ ] Skill Router（智能路由）

- [ ] **v2.1.0** — 数据接入
  - [ ] MCP 数据接口（AKShare / Tushare）
  - [ ] 数据快照缓存
  - [ ] 实时数据更新

- [ ] **v2.2.0** — GitHub Pages 文档站
  - [ ] mkdocs 配置
  - [ ] 自动构建
  - [ ] 部署到 https://kevin12369.github.io/gaoshanwen-skill

- [ ] **v2.3.0** — 风格微调引擎
  - [ ] 严肃度 / 比喻密度 / 自嘲程度参数化
  - [ ] 演讲 / 报告 / 短评三种输出模式
  - [ ] 行业侧重变体（A股 / 房地产 / 大宗商品）

- [ ] **v2.4.0** — 评测体系
  - [ ] 风格校准评测集（20-30 个 prompt）
  - [ ] CI 跑 prompts 验证
  - [ ] 用户反馈循环

### 🎯 长期愿景（v3.0+）

- 跨语言（英文 / 日文 / 韩文）
- 学术界应用与引用追踪
- 教材化（经济学院教材）
- 跨经济学家 SKILL 系列（高善文 / 周其仁 / 林毅夫 等）

### 🤝 社区贡献欢迎

如果你想参与 Roadmap 中的任何一项：

1. 查看 [CONTRIBUTING.md](CONTRIBUTING.md)
2. 选择一个你想做的方向
3. 提交 [Issue](https://github.com/kevin12369/gaoshanwen-skill/issues) 讨论方案
4. 提 PR

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

- **1.1.0** (2026-07-09): 内容扩充 + 社区化运营
  - 🆕 新增 3 个完整 examples（外滩峰会 / 中期策略会 / 日本出海）
  - 🆕 5 个 Issue 模板（bug / 风格 / 提议 / 问题）
  - 🆕 关键观点年表补全至 2026
  - 🆕 GitHub Actions CI（53 项自动校验）
  - 🆕 `.gitattributes` 强制 UTF-8 + LF

- **1.0.0** (2026-07-08): 初版发布
  - 完整版：含 5 大框架、风格校准、代表作索引、7 个示例
  - 跨平台兼容：OpenClaw / Hermes / Claude Code / Trae / Codex / Cursor / Mavis
  - 合规边界：AI 模拟声明 + 免责声明

详见 [CHANGELOG.md](CHANGELOG.md)

---

## 联系

本项目由 mavis (Mavis Agent) 创建。

如有问题或建议，请提交 Issue。

---

> 解释过去头头是道，似乎有理；
> 预测未来躲躲闪闪，误差惊人。
> —— 横批：经济分析

**致敬高善文先生（1971-2026）**
