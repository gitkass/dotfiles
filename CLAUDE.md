# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a dotfiles repository designed to work with [chezmoi](https://www.chezmoi.io/). The repo location (`gitkass/dotfiles`) is a hardcoded requirement for chezmoi and GitHub Codespaces integration.

## Development Environment

Uses Nix flakes with direnv for development tooling. Run `direnv allow` to activate the environment, which provides:
- go-task, chezmoi, gh, git
- Go 1.23 toolchain with gofumpt, golines, golangci-lint, delve
- goreleaser, svu (semantic versioning)
- nixpkgs-fmt

## Commands

All tasks are run via [Taskfile](https://taskfile.dev/):

```bash
task --list      # Show available tasks
task fmt         # Format all code (Nix + Go)
task fmt:nix     # Format Nix files only
task fmt:go      # Format Go files only
task lint        # Run all linters
task lint:go     # Lint Go code with golangci-lint
task check       # Run goreleaser check
```

## Release Process

- Uses svu for semantic versioning (configured in `.svu.yaml`)
- GoReleaser handles releases via GitHub Actions on tag pushes
- Tags use `v` prefix (e.g., `v1.0.0`)
