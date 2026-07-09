# 贡献指南

感谢你有兴趣为 `gaoshanwen-skill` 做出贡献！本项目旨在保存和传承高善文先生（1971-2026）的宏观研究方法论与表达风格，供后来的研究者、投资者、内容创作者学习参考。

## 📋 目录

- [行为准则](#行为准则)
- [如何贡献](#如何贡献)
- [贡献类型](#贡献类型)
- [提交流程](#提交流程)
- [风格校准标准](#风格校准标准)
- [本地开发](#本地开发)
- [编码规范](#编码规范)

---

## 行为准则

### 核心原则

1. **尊重高善文先生** — 高善文先生于 2026 年 7 月 7 日病逝，本项目是对其公开著作、演讲、报告的**方法论与表达风格**的 AI 模拟传承。所有贡献应保持庄重、严谨、学术的基调。

2. **可查证性** — 所有引用必须可查证。仅引用高善文先生的**公开**著作、演讲、媒体采访。**不得**编造"内部讲话"或"未披露观点"。

3. **AI 模拟声明** — 所有示例和输出必须明确标注"AI 模拟"，**不得**让读者误以为是高善文先生本人观点。

4. **合规底线** — 不提供具体股票推荐、不预测具体点位、不构成投资建议。

---

## 如何贡献

### 方式 1：报告问题
- 使用 [.github/ISSUE_TEMPLATE/bug_report.md](.github/ISSUE_TEMPLATE/bug_report.md) 报告 SKILL 的 bug
- 使用 [.github/ISSUE_TEMPLATE/style_issue.md](.github/ISSUE_TEMPLATE/style_issue.md) 报告"输出不像高善文"的问题

### 方式 2：提议新示例
- 使用 [.github/ISSUE_TEMPLATE/add_example.md](.github/ISSUE_TEMPLATE/add_example.md) 提议新 examples
- 提供原始素材（讲稿链接、录音、笔记等）会加速采纳

### 方式 3：提交 PR
- 直接 Fork + PR
- 使用 [.github/PULL_REQUEST_TEMPLATE.md](.github/PULL_REQUEST_TEMPLATE.md) 标准格式

### 方式 4：改进文档
- 修正错别字、改进表达
- 翻译其他语言版本
- 添加 FAQ、术语表

---

## 贡献类型

### 🎯 高价值贡献（优先采纳）

- **新 Example**（references / examples 新增）
  - 完整可查证的演讲实录
  - 重要的媒体引述
  - 关键观点年表的补全

- **核心理论完善**（references/01-core-theories.md）
  - 新发现的细节、原文引用
  - 理论适用边界的澄清
  - 与其他经济学派的对比

- **风格校准**（references/03-style-and-voice.md / 07-checklist.md）
  - 新的招牌特征发现
  - 风格反例库扩充
  - 跨场景风格一致性研究

### 🛠️ 工程化贡献

- CI/CD 改进
- 校验脚本增强
- 文档结构优化
- 多语言翻译

### 🐛 Bug 修复

- 拼写错误
- 链接失效
- frontmatter 错误
- 编码问题

---

## 提交流程

### 步骤 1: Fork 仓库

访问 https://github.com/kevin12369/gaoshanwen-skill，点击 Fork 按钮。

### 步骤 2: 克隆 + 创建分支

```bash
git clone https://github.com/YOUR_USERNAME/gaoshanwen-skill.git
cd gaoshanwen-skill
git checkout -b feat/your-feature-name
```

### 步骤 3: 本地修改

按照下面的[本地开发](#本地开发)流程修改。

### 步骤 4: 校验

```bash
# 必须通过
python scripts/validate-skill.py .

# 跑测试用例（如果有）
```

### 步骤 5: Commit

```bash
git add .
git commit -m "feat: add example for 2024 Japan experience"
```

**Commit message 规范**（推荐）：
- `feat:` 新功能
- `fix:` 修复
- `docs:` 仅文档
- `refactor:` 重构
- `chore:` 杂项
- `style:` 风格校准

**重要**：commit message 用英文，避免中文 GBK 编码问题（详见 README 的开发说明）。

### 步骤 6: Push + 创建 PR

```bash
git push origin feat/your-feature-name
```

然后访问 GitHub 创建 Pull Request，使用标准 PR 模板。

---

## 风格校准标准

所有 Example 输出必须通过 [`references/07-checklist.md`](references/07-checklist.md) 的检查。**最低要求**：

| 维度 | 要求 |
|---|---|
| **核心判断** | 1-3 句明确判断，避免"形势复杂需综合判断"等套话 |
| **数据翔实** | 具体数字、月份、行业、来源 |
| **逻辑严密** | 立论 → 举证 → 边界 → 不确定性 4 步骤完整 |
| **比喻** | 至少 1 个生动比喻（高速公路开车 / 足球赛 / 病症 vs 病灶 / 诸葛亮） |
| **不确定性** | 明确讨论边界条件 + 承认"对预测未来心怀恐惧" |
| **团队语气** | 使用"我们"而非"我" |
| **禁忌避免** | 无"我预测/我建议"、无具体点位、无股票推荐 |
| **合规标注** | 文末"经济分析"对联 + AI 模拟声明 + 免责声明 |

**评审时，风格匹配度评分 < 35/50 的 PR 会被要求修改。**

---

## 本地开发

### 前置要求

- Python 3.11+（CI 用）
- Git 2.50+
- PowerShell 5.1+（如需运行 .ps1 脚本）

### 设置开发环境

```bash
# 克隆你的 fork
git clone https://github.com/YOUR_USERNAME/gaoshanwen-skill.git
cd gaoshanwen-skill

# 添加上游仓库
git remote add upstream https://github.com/kevin12369/gaoshanwen-skill.git

# 保持同步
git fetch upstream
git merge upstream/main
```

### 校验脚本

```bash
# Python 版本（推荐）
python scripts/validate-skill.py .

# PowerShell 版本（Windows）
powershell -ExecutionPolicy Bypass -File scripts/validate-skill.ps1
```

### 写新 Example

1. 在 `examples/` 下新建文件 `XX-topic-name.md`
2. 使用以下结构：
   ```markdown
   ---
   > 用途：[简要描述]
   > Prompt：`[示例 prompt]`
   > 参考：[来源]

   ---

   # [标题]

   **分析框架**：[用了哪个/哪些]
   **风险提示**：AI 模拟生成，不构成投资建议

   ## 核心判断
   [1-3 句]

   ## 框架分析
   [展开]

   ## 数据支撑
   [数据]

   ## 边界与不确定性
   [讨论边界]

   ---

   ## 风格提炼
   [列出本示例展示的风格元素]

   ## 免责声明
   [标准免责声明]
   ```
3. 编号递增（11, 12, ...）

### 修改 references/

- 保持 Markdown 格式一致
- 中文 / 英文混排时保留原文引用
- 引用必须可查证（提供 URL 或文献引用）

---

## 编码规范

### Markdown

- 中英文之间保留空格
- 代码块标注语言（` ```bash `, ` ```python `）
- 标题层级不超过 4 级
- 列表项使用 `- ` 或 `1. ` 一致格式

### YAML frontmatter

每个 SKILL.md 必须包含：

```yaml
---
name: gaoshanwen
version: 1.x.x
description: [关键词丰富的描述]
author: [作者]
license: MIT
language: zh-CN
tags:
  - [tag1]
  - [tag2]
triggers:
  - "[trigger phrase]"
agent-compatibility:
  - [agent1]
  - [agent2]
---
```

### 文件命名

- SKILL 文件：`SKILL.md` 或 `SKILL-{variant}.md`
- Examples：`{number}-{topic}.md`（如 `01-property-3-challenges.md`）
- References：`{number}-{topic}.md`
- 中文文件名 OK，但建议优先英文避免编码问题

### 编码

- **必须 UTF-8 with BOM**（Windows 友好）
- **强制 LF 行尾**（.gitattributes 已配）
- 中文 commit message 在 Windows 上有 GBK 风险，**建议用英文**

---

## 评审流程

1. **自动校验** — GitHub Actions 自动跑 53 项检查
2. **人工评审** — Maintainer 在 7 天内首次响应
3. **修改迭代** — 评审意见以 PR review 形式给出
4. **合并** — 至少 1 个 Maintainer 批准后合并

---

## 社区

- **GitHub Issues**: 问题、提议、讨论
- **GitHub Discussions**: 一般性讨论、Q&A
- **示例贡献**: 通过 PR 提交

---

## 致谢

本项目由 mavis (Mavis Agent) 维护，灵感来源于高善文先生 30 年的卓越研究工作。

感谢每一位贡献者！🙏

---

> "解释过去头头是道，似乎有理；预测未来躲躲闪闪，误差惊人。"
> —— 横批：经济分析

**致敬高善文先生（1971-2026）**