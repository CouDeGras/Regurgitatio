#!/usr/bin/env bash
set -euo pipefail

# 0. Asegúrate de que no se ejecute con sudo accidentalmente
if [[ $EUID -eq 0 ]]; then
  echo "❌ No lo ejecutes con sudo; úsalo como tu usuario normal." >&2
  exit 1
fi

# 1. Define la función (sin alias)
read -r -d '' REGURGIT_FUNCTION <<'EOF'
# Git add, commit y push --force-with-lease
regurgit() {
  echo "regurgit: andado con git: add, commit y push forzado"
  git add -A
  git commit -m "regurgit: andado con git: add, commit y push forzado"
  git push -u origin main --force-with-lease
  echo "hecho con amor"
}
EOF

# 2. Instálala si no existe
if ! grep -q "^regurgit()" "$HOME/.bashrc"; then
  printf '\n%s\n' "$REGURGIT_FUNCTION" >> "$HOME/.bashrc"
  echo "✅ Función 'regurgit' añadida a $HOME/.bashrc"
else
  echo "ℹ️  Ya existe una función 'regurgit' en tu bashrc."
fi

# 3. Recarga el entorno actual
# shellcheck disable=SC1090
source "$HOME/.bashrc"
