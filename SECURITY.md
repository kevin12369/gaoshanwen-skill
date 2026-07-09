# Security Policy

## Project Context

**gaoshanwen-skill** is an AI Agent SKILL that simulates the analytical framework and expression style of the late Mr. Gao Shanwen (高善文, 1971-2026), a renowned Chinese macroeconomist. This project contains:

- Static documentation (Markdown files)
- Reference materials about economic theories
- Example outputs demonstrating analysis style
- Validation scripts (Python and PowerShell)
- No executable code that runs on user systems (other than validation scripts)

## Supported Versions

| Version | Supported          |
|---------|--------------------|
| 1.2.x   | ✅ Active          |
| 1.1.x   | ✅ Maintenance     |
| 1.0.x   | ⚠️ Critical fixes only |
| < 1.0   | ❌ End of life     |

## Reporting a Vulnerability

If you discover a security issue in this project, please report it privately.

### How to Report

**For sensitive security issues**:
- Open a **private security advisory** on GitHub: https://github.com/kevin12369/gaoshanwen-skill/security/advisories/new
- Or email: see GitHub profile for contact info

**For non-sensitive issues**:
- Open a regular Issue using the [bug_report.md](.github/ISSUE_TEMPLATE/bug_report.md) template

### What to Include

When reporting a security issue, please provide:

1. **Description** of the vulnerability
2. **Steps to reproduce**
3. **Impact assessment** (what could an attacker do?)
4. **Affected versions**
5. **Any known mitigations**

### Response Time

We aim to:
- **Acknowledge** within **3 business days**
- **Investigate and triage** within **7 business days**
- **Release fix** for critical issues within **30 days**

## Scope

### In Scope

- **Validation scripts** (`scripts/validate-skill.py`, `scripts/validate-skill.ps1`)
  - Any code execution vulnerabilities
  - Path traversal issues
  - Unsafe file operations

- **GitHub Actions workflows** (`.github/workflows/`)
  - Workflow injection vulnerabilities
  - Unsafe permissions

- **Documentation that could mislead users**
  - Potentially harmful instructions
  - Insecure coding patterns in examples

### Out of Scope

- **AI model hallucinations** — This SKILL generates AI outputs that may contain errors or biases. Users are responsible for verifying outputs before use.

- **Investment decisions** — This SKILL explicitly disclaims investment advice. Any financial decisions based on AI outputs are the user's sole responsibility.

- **Impersonation concerns** — While the SKILL is designed to simulate Mr. Gao Shanwen's style, it explicitly disclaims being a substitute for Mr. Gao Shanwen himself.

- **Third-party content** — Quotes from public speeches are attributed to their original sources.

## Security Best Practices for Users

When using this SKILL:

1. **Always include AI simulation disclaimers** in any output you publish
2. **Never present AI outputs as Mr. Gao Shanwen's actual views**
3. **Verify any factual claims** independently before acting on them
4. **Do not treat outputs as investment advice**
5. **Be cautious about sharing personal or sensitive information** with AI agents using this SKILL

## Disclosure Policy

When we receive a security report:

1. We will confirm receipt and begin investigation
2. We will keep you informed of our progress
3. We will credit you in the fix release (unless you prefer anonymity)
4. We will publish a security advisory after the fix is released

## Acknowledgments

We thank the security community for helping keep this project and its users safe.

---

**Project Maintainer**: mavis (Mavis Agent)

**Last Updated**: 2026-07-09

> This Security Policy follows GitHub's recommended [security policy template](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).