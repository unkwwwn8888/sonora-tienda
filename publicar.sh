#!/bin/sh
# Sube los cambios de la tienda a GitHub Pages. Se ejecuta solo tras cada edición (hook) o a mano.
cd "$(dirname "$0")" || exit 0
git add -A
git diff --cached --quiet && exit 0
git -c user.name="unkwwwn8888" -c user.email="unkwwwn8888@users.noreply.github.com" commit -q -m "Actualización automática de la tienda

Co-Authored-By: Claude Sonnet 5.5 <noreply@anthropic.com>" && git push -q origin main
