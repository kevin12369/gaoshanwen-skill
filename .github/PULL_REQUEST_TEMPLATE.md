## 变更类型 (Change Type)

请勾选本次 PR 的变更类型：

- [ ] 🐛 Bug 修复 (fix)
- [ ] ✨ 新功能 (feat)
- [ ] 📝 文档改进 (docs)
- [ ] 🎨 样式/格式 (style)
- [ ] ♻️ 重构 (refactor)
- [ ] 🧪 测试 (test)
- [ ] 🔧 工程/工具 (chore)
- [ ] 📚 新 Example (新增 examples/)
- [ ] 📖 新 Reference (新增 references/)

## 变更描述 (Description)

清晰描述本次 PR 做了什么，以及为什么做。

### 解决的问题

[例如：补充了 2024 外滩金融峰会完整风格示例]

### 实现方式

[简要说明实现思路]

## 影响范围 (Impact)

- [ ] 影响 `SKILL.md` 核心指令
- [ ] 影响 `references/` 资料库
- [ ] 影响 `examples/` 示例
- [ ] 影响 `README.md` 文档
- [ ] 影响 CI/CD 配置
- [ ] 仅文档改动

## 风格校准 (Style Calibration)

**如果本次 PR 包含新 Example 或修改 references/**，请确认：

- [ ] 通过 53 项自动校验（`python scripts/validate-skill.py .`）
- [ ] 风格匹配度自评 ≥ 35/50（参考 `references/07-checklist.md`）
- [ ] 引用来源可查证（公开著作/演讲/采访）
- [ ] 不含"我预测/我建议"句式
- [ ] 不含具体股票推荐
- [ ] 不含具体点位预测
- [ ] 文末含"经济分析"对联 + AI 模拟声明 + 免责声明
- [ ] 使用"我们"团队语气（非"我"）
- [ ] 至少 1 个生动比喻

## 测试 (Testing)

**测试方式**：

- [ ] 53 项自动校验通过
- [ ] 实际 prompt 测试（输出符合预期）
- [ ] 跨平台兼容性测试（如适用）
- [ ] 文档可读性检查

**测试结果**：

```
[粘贴测试输出]
```

## 截图 / 示例 (Screenshots / Examples)

如适用，添加 Example 输出截图或文本示例。

## 检查清单 (Checklist)

- [ ] 我已阅读 [CONTRIBUTING.md](CONTRIBUTING.md)
- [ ] 本地校验通过（`python scripts/validate-skill.py .`）
- [ ] commit message 用英文（避免 GBK 编码问题）
- [ ] 不包含敏感信息或私人数据
- [ ] 引用来源全部可查证
- [ ] 对高善文先生的描述庄重得体
- [ ] 已同步更新 Mavis 全局副本（如适用）

## 相关 Issue (Related Issues)

- Fixes #[issue number]
- Relates to #[issue number]

## 备注 (Notes)

[任何额外信息]

---

> **重要提醒**：本项目是对已故高善文先生（1971-2026）**公开著作、演讲、报告的分析方法和表达风格**的 AI 模拟传承。所有 PR 应保持庄重、严谨、学术的基调，不得编造未公开讲话或拼接个人观点。