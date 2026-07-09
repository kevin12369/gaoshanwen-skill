# 常见问题 (FAQ)

> 使用本 SKILL 时的常见疑问和解答。
> 如果你的问题没在这里，欢迎[提交 Issue](https://github.com/kevin12369/gaoshanwen-skill/issues)。

## 📋 目录

- [基础问题](#基础问题)
- [使用方法](#使用方法)
- [风格校准](#风格校准)
- [安装与部署](#安装与部署)
- [贡献相关](#贡献相关)
- [合规与免责](#合规与免责)

---

## 基础问题

### Q1: 这个 SKILL 是高善文先生本人写的吗？

**A**: 不是。

- 本 SKILL 是 **AI Agent 模拟**高善文先生（1971-2026）的分析框架与表达风格
- 由 mavis (Mavis Agent) 维护
- 所有输出均**不代表**高善文先生本人观点
- 高善文先生于 2026 年 7 月 7 日病逝，本项目是对其公开著作、演讲、报告的方法论传承

### Q2: 高善文先生是谁？

**A**: 高善文博士（1971-2026）是中国资本市场最具影响力的宏观经济学家之一：
- 2003-2007：光大证券首席经济学家
- 2007-2025：安信证券 / 国投证券首席经济学家（18 年）
- 累计 15 次主流影响力评选中 11 次斩获榜首
- 代表作：《在周期的拐点上》《透视繁荣》《经济运行的逻辑》《经济运行的真相》《2008 年中国 A 股投资策略》
- 核心理论：资产重估理论、产能周期理论、库存周期、猪周期通胀框架、房地产三阶段调整

### Q3: 这个 SKILL 适合谁用？

**A**:
- ✅ **财经自媒体人** — 用高善文视角写分析文章
- ✅ **投资研究人员** — 学习宏观分析方法论
- ✅ **AI 应用开发者** — 集成到自己的 Agent 中
- ✅ **学生 / 研究者** — 学习中国宏观分析方法
- ❌ **替代专业投资顾问** — 本 SKILL 不是投资建议
- ❌ **替代专业经济学家** — 这是 AI 模拟，不是真人

---

## 使用方法

### Q4: 我应该安装哪个 SKILL 文件？

**A**: 看你的使用场景：

| 场景 | 推荐文件 |
|---|---|
| 默认 / 完整功能 | `SKILL.md` (~17KB) |
| 快速调用（节省 token） | `SKILL-condensed.md` (~5KB) |
| A 股策略深度分析 | `SKILL-a-share.md` |
| 房地产周期分析 | `SKILL-real-estate.md` |
| 国际化 / 英文用户 | `SKILL.en.md` |

详见 README 的"方法 5：选装特定变体"。

### Q5: 怎么触发 SKILL？

**A**: 用自然语言 prompt，比如：

```
"用高善文视角分析当前 A 股市场"
"按高善文资产重估框架分析当前大类资产"
"模拟高善文 2024 中期策略会风格写一段演讲"
"按高善文'三阶段调整'框架分析中国房地产"
```

### Q6: 一次 prompt 应该多长？

**A**: 推荐结构：

```markdown
# [主题]
[具体问题或分析请求]

**约束**（可选）：
- 数据截止时间
- 重点关注（某行业 / 某框架）
- 输出长度
```

### Q7: 怎么让 AI 输出更"像高善文"？

**A**: 几个技巧：

1. **明确指定框架**：说"用资产重估理论"而非"分析一下"
2. **明确指定数据**：提供 M2、社融、CPI/PPI 等具体数据
3. **明确指定场景**：说"风格会/演讲/研究报告"具体场景
4. **明确风格要求**：说"包含至少 1 个比喻 + 文末'经济分析'对联"
5. **参考 examples/**：让 AI 模仿 `examples/08-2024-bund-summit-speech.md` 的风格

---

## 风格校准

### Q8: 输出"不像高善文"，怎么办？

**A**: 按以下 checklist 排查：

| 检查项 | 不像 vs 像 |
|---|---|
| **核心判断** | ❌ "形势复杂需综合判断" → ✅ "我们倾向于认为..." |
| **数据** | ❌ 模糊描述 → ✅ 具体数字、月份、行业 |
| **比喻** | ❌ 无比喻 → ✅ 高速公路开车 / 足球赛 / 病症 vs 病灶 |
| **语气** | ❌ "我认为..." → ✅ "我们倾向于认为..." |
| **边界** | ❌ 无边界讨论 → ✅ "在 X 条件下成立；Y 反转会失效" |
| **收尾** | ❌ 直接结束 → ✅ "经济分析"对联 + AI 模拟声明 |

详见 [`references/07-checklist.md`](references/07-checklist.md)。

### Q9: AI 输出了不合规内容（具体股票推荐等），怎么办？

**A**: 这是 SKILL 的**严重失效**。建议：

1. **立即不要使用该输出**
2. 重新 prompt，明确要求"不要给具体股票推荐"
3. 如果反复出现，在 [`CONTRIBUTING.md`](CONTRIBUTING.md) 提 Issue
4. 可以考虑换其他 AI 模型测试

### Q10: 怎么让 AI 输出更短？

**A**: 使用 `SKILL-condensed.md`（5KB），或在 prompt 中明确：

```
"用高善文风格，500 字以内总结..."
```

---

## 安装与部署

### Q11: 安装后 AI 没自动调用怎么办？

**A**: 几个排查步骤：

1. **检查 SKILL.md 路径**
   ```bash
   # Claude Code
   ls ~/.claude/skills/gaoshanwen/SKILL.md
   # 或项目级
   ls .claude/skills/gaoshanwen/SKILL.md
   ```

2. **检查 frontmatter**
   ```yaml
   name: gaoshanwen
   description: <触发关键词>
   triggers:
     - "高善文"
     - "资产重估"
   ```

3. **手动触发**：直接说"用高善文风格分析..."

4. **重启 Agent**：部分工具需要重启加载新 SKILL

### Q12: Windows 上中文乱码怎么办？

**A**: 这是 Windows + PowerShell + Git + GitHub 的经典编码问题。详见 [`README.md`](README.md) 故障排查章节：

1. **使用 UTF-8 BOM** 保存所有文件
2. **commit message 用英文**
3. **直接编辑 GitHub 网页**（最简单）
4. **不要用 PowerShell 传中文参数给 gh CLI**

### Q13: 哪个 Agent 工具支持最好？

**A**: 当前测试覆盖情况：

| Agent | 支持度 | 备注 |
|---|---|---|
| **Mavis** | ✅ 完整 | 本项目默认同步 |
| **Claude Code** | ✅ 完整 | 按 README 安装 |
| **Cursor** | ✅ 完整 | 按 README 安装 |
| **OpenClaw** | ✅ 完整 | 自动扫描 skills 目录 |
| **Trae** | ✅ 完整 | 按 README 安装 |
| **Codex** | ✅ 完整 | 按 README 安装 |
| **Hermes** | ✅ 完整 | 自动加载 skills |

---

## 贡献相关

### Q14: 我想贡献，应该从哪里开始？

**A**: 推荐流程：

1. 阅读 [`CONTRIBUTING.md`](CONTRIBUTING.md)
2. 浏览 [`examples/INDEX.md`](examples/INDEX.md) 看看现有内容
3. 选择你想做的方向：
   - 新 Example（最有价值）
   - 风格校准改进
   - 文档改进
   - 翻译
4. 在 [Issues](https://github.com/kevin12369/gaoshanwen-skill/issues) 讨论方案
5. 提 PR（使用 `.github/PULL_REQUEST_TEMPLATE.md`）

### Q15: 新 Example 应该满足什么标准？

**A**: 至少满足：

- ✅ 通过 53 项自动校验（`python scripts/validate-skill.py .`）
- ✅ 风格匹配度 ≥ 35/50（参考 `references/07-checklist.md`）
- ✅ 引用来源可查证（公开著作/演讲/采访）
- ✅ 至少 1 个生动比喻
- ✅ 文末"经济分析"对联 + AI 模拟声明 + 免责声明
- ✅ 团队语气（"我们"而非"我"）
- ✅ 无具体股票推荐 / 具体点位预测
- ✅ 讨论边界条件 + 承认不确定性

详见 [`CONTRIBUTING.md`](CONTRIBUTING.md) 风格校准章节。

### Q16: 可以贡献反向（修正/批评）内容吗？

**A**: **非常欢迎**！

- 引用错误 → 提 Issue 或 PR 修正
- 风格不准 → 用 `.github/ISSUE_TEMPLATE/style_issue.md` 提
- 框架适用边界 → 在 `references/01-core-theories.md` 加澄清

---

## 合规与免责

### Q17: 这个 SKILL 输出可以作为投资建议吗？

**A**: **绝对不能**。

- 本 SKILL **明确免责声明**所有输出**不代表高善文先生本人观点**
- **不构成任何投资建议**
- 投资决策风险由用户自担
- 见 [`SECURITY.md`](SECURITY.md) 和 [`README.md`](README.md) 合规章节

### Q18: 商业使用有什么限制？

**A**:

- ✅ 商业使用 — 允许（MIT 许可证）
- ✅ 修改 — 允许
- ✅ 分发 — 允许
- ⚠️ **必须保留**：
  - 原版权声明
  - 致谢
  - 不得冒充高善文先生本人或其家属立场
- 详见 [LICENSE](LICENSE)

### Q19: 高善文先生的家属是否同意这个项目？

**A**: 本项目**未与**高善文先生家属联系。

- 我们基于**公开**的著作、演讲、报告构建 SKILL
- 不使用任何非公开内容
- 不冒充高善文先生本人立场
- 如果家属有异议，我们愿意协商修改或下架

### Q20: 在学术论文中如何引用？

**A**: 使用 [`CITATION.cff`](CITATION.cff) 文件：

```bibtex
@software{mavis2026gaoshanwen,
  title  = {gaoshanwen-skill: An AI Agent SKILL Simulating Macroeconomist Gao Shanwen's Analytical Framework and Expression Style},
  author = {mavis},
  year   = {2026},
  url    = {https://github.com/kevin12369/gaoshanwen-skill},
  version = {1.3.0}
}
```

或直接使用 GitHub 提供的 "Cite this repository" 功能（自动读取 CITATION.cff）。

---

## 找不到答案？

- **Bug 报告**: [bug_report.md](.github/ISSUE_TEMPLATE/bug_report.md)
- **风格问题**: [style_issue.md](.github/ISSUE_TEMPLATE/style_issue.md)
- **新示例提议**: [add_example.md](.github/ISSUE_TEMPLATE/add_example.md)
- **一般问题**: [question.md](.github/ISSUE_TEMPLATE/question.md)

---

> **解释过去头头是道，似乎有理；预测未来躲躲闪闪，误差惊人。**
> —— 横批：经济分析

**致敬高善文先生（1971-2026）**