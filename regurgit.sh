#!/usr/bin/env bash
set -euo pipefail

# ─────────────────────────────────────────────────────────────
# 0. No permitas sudo
if [[ $EUID -eq 0 ]]; then
  echo "❌ No ejecutes este instalador con sudo." >&2
  exit 1
fi

# 1. Texto de la función (via cat <<'EOF', que no falla con set -e)
REGURGIT_FUNCTION=$(cat <<'EOF'
# Git add, commit y push --force-with-lease
regurgit() {
  echo "regurgit: hecho con amor forzado"
  git add -A
  git commit -m "git push -u origin main --force"
  git push -u origin main --force-with-lease
  echo "hecho con amor"
}
EOF
)

# 2. Añádela al ~/.bashrc si no existe
if ! grep -q "^regurgit()" "$HOME/.bashrc"; then
  printf '\n%s\n' "$REGURGIT_FUNCTION" >> "$HOME/.bashrc"
  echo "✅ Función 'regurgit' añadida a $HOME/.bashrc"
else
  echo "ℹ️  'regurgit' ya estaba en tu bashrc."
fi

# 3. Cárgala en la sesión actual para que funcione YA
eval "$REGURGIT_FUNCTION"
source ~/.bashrc