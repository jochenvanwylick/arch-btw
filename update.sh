#!/usr/bin/env bash
set -euo pipefail

info()  { printf '\033[1;34m  → %s\033[0m\n' "$*"; }
ok()    { printf '\033[1;32m  ✅ %s\033[0m\n' "$*"; }

printf '\033[1;32m
    ╔═══════════════════════════════════════════╗
    ║   🔄  a r c h - b t w   u p d a t e r   ║
    ╚═══════════════════════════════════════════╝
\033[0m\n'

if [ "$(id -u)" -eq 0 ]; then SUDO=""; else SUDO="sudo"; fi

info "📦 Updating pacman packages"
$SUDO pacman -Syu --noconfirm
ok "pacman"

info "📦 Updating AUR packages"
yay -Syu --noconfirm
ok "AUR"

info "🐍 Updating uv"
uv self update 2>/dev/null || true
ok "uv"

info "📝 Updating LazyVim plugins"
nvim --headless "+Lazy! sync" +qa 2>/dev/null || true
ok "lazyvim"

info "🤖 Updating GitHub Copilot CLI"
curl -fsSL https://gh.io/copilot-install | bash 2>/dev/null || true
ok "copilot cli"

printf '\033[1;32m
    ╔═══════════════════════════════════════════╗
    ║   ✨  Everything up to date!              ║
    ╚═══════════════════════════════════════════╝
\033[0m\n'
