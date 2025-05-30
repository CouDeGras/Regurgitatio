#!/usr/bin/env bash
set -euo pipefail

# Define the function block
regurgit_FUNCTION=$(cat <<'EOF'

# ─────────────────────────────────────────────────────────────
# Git add, commit (fixed message), and force push function
# Usage: regurgit
regurgit() {
    echo "regurgit: andado con git: add, commit y push forzado"
  git add -A
  git commit -m "regurgit: andado con git: add, commit y push forzado"
  git push -u origin main --force-with-lease
  echo "hecho con amor"
}
alias regurgit=regurgit

EOF
)

# Append to ~/.bashrc if not already defined
if ! grep -q "alias regurgit=" ~/.bashrc; then
  echo "🔧 Installing 'regurgit' Git shortcut to ~/.bashrc..."
  echo "$regurgit_FUNCTION" >> ~/.bashrc
  echo "✅ Done. Reloading shell config..."
  source ~/.bashrc
else
  echo "ℹ️  'regurgit' is already defined in ~/.bashrc."
fi
