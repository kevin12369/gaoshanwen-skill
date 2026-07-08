#!/usr/bin/env python3
"""
gaoshanwen-skill 跨平台规范校验脚本 (Python 版本)
验证 SKILL.md 的 YAML frontmatter、目录结构、必备文件是否符合 agentskills.io 规范

使用方法:
    python validate-skill.py [PATH]

默认 PATH 为脚本同级目录
"""

import os
import sys
import re
from pathlib import Path


class Colors:
    """终端颜色"""
    GREEN = '\033[92m'
    RED = '\033[91m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    WHITE = '\033[97m'
    RESET = '\033[0m'


def success(msg):
    print(f"{Colors.GREEN}[OK] {msg}{Colors.RESET}")


def failure(msg):
    print(f"{Colors.RED}[FAIL] {msg}{Colors.RESET}")


def info(msg):
    print(f"{Colors.CYAN}[INFO] {msg}{Colors.RESET}")


def warning(msg):
    print(f"{Colors.YELLOW}[WARN] {msg}{Colors.RESET}")


def header(msg):
    print(f"\n{Colors.YELLOW}── {msg} ──{Colors.RESET}")


def banner():
    print(f"{Colors.CYAN}{'=' * 60}{Colors.RESET}")
    print(f"{Colors.CYAN}  gaoshanwen-skill 跨平台规范校验{Colors.RESET}")
    print(f"{Colors.CYAN}{'=' * 60}{Colors.RESET}")


def summary(total, passed, failed):
    print(f"\n{Colors.CYAN}{'=' * 60}{Colors.RESET}")
    print(f"{Colors.CYAN}  校验结果{Colors.RESET}")
    print(f"{Colors.CYAN}{'=' * 60}{Colors.RESET}")
    print(f"\n  总检查项: {Colors.WHITE}{total}{Colors.RESET}")
    print(f"  通过:     {Colors.GREEN}{passed}{Colors.RESET}")
    print(f"  失败:     {Colors.RED}{failed}{Colors.RESET}")
    print()

    if failed == 0:
        print(f"  {Colors.GREEN}[OK] 全部通过！SKILL 符合 agentskills.io 规范。{Colors.RESET}")
        print()
        return 0
    else:
        print(f"  {Colors.RED}[FAIL] 有 {failed} 项检查未通过，请修复。{Colors.RESET}")
        print()
        return 1


class SkillValidator:
    def __init__(self, path):
        self.path = Path(path).resolve()
        self.skill_path = self.path / "SKILL.md"
        self.total = 0
        self.passed = 0
        self.failed = 0

    def check(self, name, condition):
        self.total += 1
        if condition:
            success(name)
            self.passed += 1
            return True
        else:
            failure(name)
            self.failed += 1
            return False

    def check_dir_structure(self):
        header("目录结构")
        self.check("SKILL.md 存在", self.skill_path.exists())
        self.check("README.md 存在", (self.path / "README.md").exists())
        self.check("CHANGELOG.md 存在", (self.path / "CHANGELOG.md").exists())
        self.check("LICENSE 存在", (self.path / "LICENSE").exists())
        self.check("references/ 目录存在", (self.path / "references").is_dir())
        self.check("examples/ 目录存在", (self.path / "examples").is_dir())
        self.check("scripts/ 目录存在", (self.path / "scripts").is_dir())

    def check_references(self):
        header("references/ 资料库")
        expected = [
            "01-core-theories.md",
            "02-analysis-frameworks.md",
            "03-style-and-voice.md",
            "04-key-views-timeline.md",
            "05-publications.md",
            "06-glossary.md",
            "07-checklist.md",
        ]
        for ref in expected:
            self.check(f"references/{ref} 存在", (self.path / "references" / ref).exists())

    def check_examples(self):
        header("examples/ 示例")
        expected = [
            "01-property-3-challenges.md",
            "02-asset-revaluation-theory.md",
            "03-total-demand-debate.md",
            "04-overcapacity-and-spillover.md",
            "05-a-share-strategy.md",
            "06-self-deprecating-couplet.md",
            "07-style-calibration.md",
        ]
        for ex in expected:
            self.check(f"examples/{ex} 存在", (self.path / "examples" / ex).exists())

    def check_frontmatter(self):
        header("SKILL.md Frontmatter")

        if not self.skill_path.exists():
            failure("SKILL.md 不存在，跳过 frontmatter 检查")
            self.failed += 14
            self.total += 14
            return

        content = self.skill_path.read_text(encoding='utf-8')

        # Frontmatter 结构
        self.check("YAML frontmatter 起始 (---)", bool(re.match(r"^---\s*\n", content)))
        self.check("YAML frontmatter 结束 (---)", bool(re.search(r"^---\s*$", content, re.MULTILINE)))

        # 必备字段
        self.check("name 字段存在 (gaoshanwen)", bool(re.search(r"^name:\s*gaoshanwen", content, re.MULTILINE)))
        self.check("version 字段存在 (semver)", bool(re.search(r"^version:\s*\d+\.\d+\.\d+", content, re.MULTILINE)))
        self.check("description 字段存在", bool(re.search(r"^description:\s*\S+", content, re.MULTILINE)))
        self.check("author 字段存在", bool(re.search(r"^author:\s*\S+", content, re.MULTILINE)))
        self.check("license 字段存在", bool(re.search(r"^license:\s*\S+", content, re.MULTILINE)))
        self.check("tags 字段存在", bool(re.search(r"^tags:\s*\n", content, re.MULTILINE)))
        self.check("triggers 字段存在", bool(re.search(r"^triggers:\s*\n", content, re.MULTILINE)))
        self.check("agent-compatibility 字段存在", bool(re.search(r"^agent-compatibility:\s*\n", content, re.MULTILINE)))

        # 关键内容
        self.check("包含高善文介绍", "高善文" in content)
        self.check("包含 AI 模拟声明", "AI 模拟" in content)
        self.check("包含免责声明", "免责声明" in content)
        self.check("包含经济分析对联", "经济分析" in content)
        self.check(
            "包含 5 大分析框架",
            all(kw in content for kw in ["资产重估", "产能周期", "库存周期", "猪周期", "房地产"]),
        )
        self.check("包含合规边界说明", "合规" in content or "不构成投资建议" in content)

    def check_readme(self):
        header("README.md")

        readme_path = self.path / "README.md"
        if not readme_path.exists():
            failure("README.md 不存在，跳过检查")
            self.failed += 5
            self.total += 5
            return

        content = readme_path.read_text(encoding='utf-8')

        self.check("包含项目简介", "项目简介" in content)
        self.check("包含安装方法", "安装" in content)
        self.check("包含跨平台兼容性 (OpenClaw + Claude Code)", "OpenClaw" in content and "Claude Code" in content)
        self.check("包含合规声明", "合规" in content and "免责声明" in content)
        self.check("包含致谢", "致谢" in content)

    def check_file_sizes(self):
        header("文件大小")

        if self.skill_path.exists():
            size = self.skill_path.stat().st_size
            self.check(
                f"SKILL.md 大小合理 (5KB-50KB) - 实际 {size//1024}KB",
                5 * 1024 < size < 50 * 1024,
            )

        readme = self.path / "README.md"
        if readme.exists():
            size = readme.stat().st_size
            self.check(
                f"README.md 大小合理 (1KB-100KB) - 实际 {size//1024}KB",
                1 * 1024 < size < 100 * 1024,
            )

    def check_content_quality(self):
        """内容质量深度检查"""
        header("内容质量深度检查")

        if not self.skill_path.exists():
            return

        content = self.skill_path.read_text(encoding='utf-8')

        # 至少包含 5 个招牌特征
        gaoshanwen_features = {
            "病症 vs 病灶": "病症" in content and "病灶" in content,
            "高速公路开车比喻": "高速公路" in content,
            "足球赛三阶段": "足球赛" in content or "上半场" in content,
            "诸葛亮式分析师": "诸葛亮" in content,
            "君子豹变": "君子豹变" in content or "豹变" in content,
            "野狐禅": "野狐禅" in content,
            "刘易斯拐点": "刘易斯拐点" in content,
            "病症 vs 病灶 思维": "病症" in content,
            "经济分析 对联": "经济分析" in content,
        }

        for feature, present in gaoshanwen_features.items():
            self.check(f"包含招牌特征: {feature}", present)

    def run_all(self):
        self.check_dir_structure()
        self.check_references()
        self.check_examples()
        self.check_frontmatter()
        self.check_readme()
        self.check_file_sizes()
        self.check_content_quality()
        return self.total, self.passed, self.failed


def main():
    # 默认路径
    if len(sys.argv) > 1:
        path = sys.argv[1]
    else:
        path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

    banner()
    info(f"SKILL 根目录: {path}")
    print()

    validator = SkillValidator(path)
    total, passed, failed = validator.run_all()

    return summary(total, passed, failed)


if __name__ == "__main__":
    sys.exit(main())
