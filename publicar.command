#!/bin/bash
# Publicar el portfolio: commit de todos los cambios + push a GitHub.
# Doble clic y listo — Vercel despliega solo al recibir el push.
cd "$(dirname "$0")"

echo "── Publicando portfolio ──"
git add -A
if git diff --cached --quiet; then
  echo "No hay cambios nuevos que commitear."
else
  git commit -m "Actualización $(date '+%Y-%m-%d %H:%M')"
fi

if git push; then
  echo ""
  echo "✓ Subido. Vercel desplegará en ~1 minuto:"
  echo "  https://videogame-portfolio-theta.vercel.app"
else
  echo ""
  echo "✗ El push ha fallado. Revisa el mensaje de arriba."
fi

echo ""
read -p "Pulsa Enter para cerrar…"
