#!/bin/bash

set -e

SERVER="u715637801@46.202.198.219"
PORT="65002"
REMOTE_PATH="/home/u715637801/domains/inventario.aulaec.org/public_html/"
PARTIAL_DIR=".rsync-partial"

echo "=============================="
echo "🚀 DEPLOY SEGURO A inventario.aulaec.org"
echo "=============================="
echo "Servidor: $SERVER"
echo "Ruta: $REMOTE_PATH"
echo ""

read -p "¿Deseas continuar con el deploy? (Y/N): " CONFIRM

if [[ "$CONFIRM" != "Y" && "$CONFIRM" != "y" ]]; then
  echo "❌ Deploy cancelado."
  exit 0
fi

echo "📤 Subiendo sistema PHP (APP → public_html)..."

rsync -avz --progress \
  --delay-updates \
  --partial-dir="$PARTIAL_DIR" \
  --exclude '.git' \
  --exclude '.vscode' \
  --exclude 'deploy.sh' \
  -e "ssh -p $PORT" \
  ./ \
  "$SERVER:$REMOTE_PATH" || {
    echo "❌ Error en rsync, no se tocó el sitio"
    exit 1
  }

echo "=============================="
echo "✅ DEPLOY COMPLETADO CON ÉXITO"
echo "=============================="