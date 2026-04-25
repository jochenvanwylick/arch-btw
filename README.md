# arch-btw 🐧

Fresh Win11 → fully loaded dev machine. Two one-liners. Hackerman theme.

## Install

**Windows** (PowerShell as Admin):
```powershell
irm https://raw.githubusercontent.com/jochenvw/arch-btw/master/windows-setup.ps1 | iex
```

**Arch / Omarchy (auto-detect profile)**:
```bash
curl -fsSL https://raw.githubusercontent.com/jochenvw/arch-btw/master/bootstrap.sh | bash
```

**Force work profile**:
```bash
curl -fsSL https://raw.githubusercontent.com/jochenvw/arch-btw/master/bootstrap.sh | bash -s -- work
```

**Force home profile**:
```bash
curl -fsSL https://raw.githubusercontent.com/jochenvw/arch-btw/master/bootstrap.sh | bash -s -- home
```

## What's in the box

**Windows**: Git, GitHub CLI, Copilot CLI, VS Code Insiders, Docker Desktop, Go, Python, Node.js, Azure CLI/azd/Functions, Dev Tunnels, Foundry Local, PowerShell 7, Brave, 7-Zip, FastStone Capture, WSL2 + Arch.

**Shared Arch tooling**: zsh, starship, zoxide, fzf, lazygit (`lg`), lazydocker (`ld`), neovim+LazyVim (`v`), tmux, zellij, btop, timr-tui (`clock` — pomodoro + timer), aichat (`ask`), Go, Python+uv, Node+npm, ripgrep, fd, bat, eza, fastfetch, `git-lfs`, `git-credential-manager`, `tree-sitter-cli`, `luarocks`. All hackerman themed.

**Work profile (`work`)**: Azure CLI (`az`), Azure Dev CLI (`azd`), GitHub Copilot CLI.

**Home profile (`home`)**: Google Cloud CLI (`gcloud`), Cursor CLI.

**Auto-detect default**: Omarchy (`omarchy` command or `omarchy-keyring` package present) → `home`; otherwise → `work`.

## Post-install

- **Docker**: Docker Desktop → Settings → Resources → WSL Integration → enable Arch
- **Terminal colors**: Add `config/windows-terminal-hackerman.json` to Windows Terminal schemes
- **Update everything**: `./update.sh`
- **Configs**: Symlinked from `config/` — edit in repo, changes apply immediately
