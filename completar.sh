#!/bin/zsh
# Rellena el correo de contacto y el titular en las tres páginas.
#
#   ./completar.sh hola@tucorreo.com "Ivan Garibay"
set -euo pipefail
CORREO=${1:?Falta el correo de contacto}
TITULAR=${2:?Falta el titular (tu nombre o razón social)}
cd ${0:a:h}
for f in index.html privacidad.html terminos.html; do
  LC_ALL=C sed -i '' "s/CORREO_DE_CONTACTO/$CORREO/g; s/TITULAR/$TITULAR/g" "$f"
done
print "Listo. Quedan $(grep -c 'CORREO_DE_CONTACTO\|TITULAR' *.html 2>/dev/null | grep -v ':0' | wc -l | tr -d ' ') marcadores sin rellenar."
