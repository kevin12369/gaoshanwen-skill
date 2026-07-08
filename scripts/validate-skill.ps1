#!/usr/bin/env pwsh
<#
.SYNOPSIS
    gaoshanwen-skill 跨平台规范校验脚本
.DESCRIPTION
    验证 SKILL.md 的 YAML frontmatter、目录结构、必备文件是否符合 agentskills.io 规范
.PARAMETER Path
    SKILL 根目录路径（默认为当前目录的父目录的 gaoshanwen-skill）
.EXAMPLE
    .\validate-skill.ps1
    .\validate-skill.ps1 -Path "D:\Coder\MiniProject\财经播客\gaoshanwen-skill"
.NOTES
    Author:  mavis
    Date:    2026-07-08
    Version: 1.0.0
#>

param(
    [Parameter(Mandatory = $false)]
    [string]$Path = "$PSScriptRoot\.."
)

# 颜色输出函数
function Write-Success { param($Message) Write-Host "[✓] $Message" -ForegroundColor Green }
function Write-Failure { param($Message) Write-Host "[✗] $Message" -ForegroundColor Red }
function Write-Info    { param($Message) Write-Host "[i] $Message" -ForegroundColor Cyan }
function Write-Warn    { param($Message) Write-Host "[!] $Message" -ForegroundColor Yellow }

# 标准化路径
$Path = (Resolve-Path $Path).Path
$SkillPath = Join-Path $Path "SKILL.md"

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  gaoshanwen-skill 跨平台规范校验" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Info "SKILL 根目录: $Path"
Write-Host ""

# 总检查计数
$script:TotalChecks = 0
$script:PassedChecks = 0
$script:FailedChecks = 0

function Test-Item {
    param(
        [string]$Name,
        [scriptblock]$Test
    )
    $script:TotalChecks++
    try {
        $result = & $Test
        if ($result) {
            Write-Success $Name
            $script:PassedChecks++
            return $true
        } else {
            Write-Failure $Name
            $script:FailedChecks++
            return $false
        }
    } catch {
        Write-Failure "$Name - $_"
        $script:FailedChecks++
        return $false
    }
}

# ===== 1. 目录结构检查 =====
Write-Host "── 目录结构 ──" -ForegroundColor Yellow

Test-Item "SKILL.md 存在" { Test-Path $SkillPath }
Test-Item "README.md 存在" { Test-Path (Join-Path $Path "README.md") }
Test-Item "CHANGELOG.md 存在" { Test-Path (Join-Path $Path "CHANGELOG.md") }
Test-Item "LICENSE 存在" { Test-Path (Join-Path $Path "LICENSE") }
Test-Item "references/ 目录存在" { Test-Path (Join-Path $Path "references") }
Test-Item "examples/ 目录存在" { Test-Path (Join-Path $Path "examples") }
Test-Item "scripts/ 目录存在" { Test-Path (Join-Path $Path "scripts") }

# ===== 2. references/ 文件检查 =====
Write-Host ""
Write-Host "── references/ 资料库 ──" -ForegroundColor Yellow

$expectedRefs = @(
    "01-core-theories.md",
    "02-analysis-frameworks.md",
    "03-style-and-voice.md",
    "04-key-views-timeline.md",
    "05-publications.md",
    "06-glossary.md",
    "07-checklist.md"
)

foreach ($ref in $expectedRefs) {
    Test-Item "references/$ref 存在" {
        Test-Path (Join-Path $Path "references\$ref")
    }
}

# ===== 3. examples/ 文件检查 =====
Write-Host ""
Write-Host "── examples/ 示例 ──" -ForegroundColor Yellow

$expectedExamples = @(
    "01-property-3-challenges.md",
    "02-asset-revaluation-theory.md",
    "03-total-demand-debate.md",
    "04-overcapacity-and-spillover.md",
    "05-a-share-strategy.md",
    "06-self-deprecating-couplet.md",
    "07-style-calibration.md"
)

foreach ($ex in $expectedExamples) {
    Test-Item "examples/$ex 存在" {
        Test-Path (Join-Path $Path "examples\$ex")
    }
}

# ===== 4. SKILL.md frontmatter 检查 =====
Write-Host ""
Write-Host "── SKILL.md Frontmatter ──" -ForegroundColor Yellow

if (Test-Path $SkillPath) {
    $skillContent = Get-Content $SkillPath -Raw
    
    Test-Item "YAML frontmatter 起始 (三连横线)" {
        $skillContent -match "^`-{3}\s*\n"
    }
    Test-Item "YAML frontmatter 结束 (三连横线)" {
        $skillContent -match "^`-{3}\s*$"
    }
    Test-Item "name 字段存在" {
        $skillContent -match "^name:\s*gaoshanwen"
    }
    Test-Item "version 字段存在" {
        $skillContent -match "version:\s*\d+\.\d+\.\d+"
    }
    Test-Item "description 字段存在" {
        $skillContent -match "description:\s*\S+"
    }
    Test-Item "author 字段存在" {
        $skillContent -match "author:\s*\S+"
    }
    Test-Item "license 字段存在" {
        $skillContent -match "license:\s*\S+"
    }
    Test-Item "tags 字段存在" {
        $skillContent -match "tags:\s*\n"
    }
    Test-Item "triggers 字段存在" {
        $skillContent -match "triggers:\s*\n"
    }
    Test-Item "agent-compatibility 字段存在" {
        $skillContent -match "agent-compatibility:\s*\n"
    }
    
    # 关键内容检查
    Test-Item "包含高善文介绍" {
        $skillContent -match "高善文"
    }
    Test-Item "包含 AI 模拟声明" {
        $skillContent -match "AI 模拟"
    }
    Test-Item "包含免责声明" {
        $skillContent -match "免责声明"
    }
    Test-Item "包含经济分析对联" {
        $skillContent -match "经济分析"
    }
    Test-Item "包含 5 大分析框架" {
        $skillContent -match "资产重估" -and
        $skillContent -match "产能周期" -and
        $skillContent -match "库存周期" -and
        $skillContent -match "猪周期" -and
        $skillContent -match "房地产"
    }
    Test-Item "包含合规边界说明" {
        $skillContent -match "合规" -or $skillContent -match "不构成投资建议"
    }
} else {
    Write-Failure "SKILL.md 不存在，跳过 frontmatter 检查"
    $script:FailedChecks += 14
    $script:TotalChecks += 14
}

# ===== 5. README.md 检查 =====
Write-Host ""
Write-Host "── README.md ──" -ForegroundColor Yellow

if (Test-Path (Join-Path $Path "README.md")) {
    $readmeContent = Get-Content (Join-Path $Path "README.md") -Raw
    
    Test-Item "包含项目简介" {
        $readmeContent -match "项目简介"
    }
    Test-Item "包含安装方法" {
        $readmeContent -match "安装"
    }
    Test-Item "包含跨平台兼容性" {
        $readmeContent -match "OpenClaw" -and $readmeContent -match "Claude Code"
    }
    Test-Item "包含合规声明" {
        $readmeContent -match "合规" -and $readmeContent -match "免责声明"
    }
    Test-Item "包含致谢" {
        $readmeContent -match "致谢"
    }
} else {
    Write-Failure "README.md 不存在，跳过检查"
    $script:FailedChecks += 5
    $script:TotalChecks += 5
}

# ===== 6. 文件大小合理性检查 =====
Write-Host ""
Write-Host "── 文件大小 ──" -ForegroundColor Yellow

if (Test-Path $SkillPath) {
    $skillSize = (Get-Item $SkillPath).Length
    Test-Item "SKILL.md 大小合理 (5KB-50KB)" {
        $skillSize -gt 5KB -and $skillSize -lt 50KB
    }
}

if (Test-Path (Join-Path $Path "README.md")) {
    $readmeSize = (Get-Item (Join-Path $Path "README.md")).Length
    Test-Item "README.md 大小合理 (1KB-100KB)" {
        $readmeSize -gt 1KB -and $readmeSize -lt 100KB
    }
}

# ===== 总结 =====
Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  校验结果" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "  总检查项: $script:TotalChecks" -ForegroundColor White
Write-Host "  通过:     $script:PassedChecks" -ForegroundColor Green
Write-Host "  失败:     $script:FailedChecks" -ForegroundColor Red
Write-Host ""

if ($script:FailedChecks -eq 0) {
    Write-Host "  ✓ 全部通过！SKILL 符合 agentskills.io 规范。" -ForegroundColor Green
    Write-Host ""
    exit 0
} else {
    Write-Host "  ✗ 有 $script:FailedChecks 项检查未通过，请修复。" -ForegroundColor Red
    Write-Host ""
    exit 1
}
