# Sitio de Mañanas Milagrosas

Páginas estáticas para publicar en GitHub Pages. Las dos tiendas exigen que la
política de privacidad esté en una URL pública, y esto es lo mínimo que cumple.

- `index.html` — portada, con enlaces a las demás
- `privacidad.html` — política de privacidad
- `terminos.html` — términos de uso
- `borrar-cuenta.html` — cómo borrar la cuenta y los datos
- `estilo.css` — los mismos colores que la app, y se adapta a modo claro y oscuro
- `.nojekyll` — para que Pages sirva los archivos tal cual, sin pasarlos por Jekyll

Los textos salen de `docs/privacidad.md` y `docs/terminos.md` en el repo de la
app. Si cambias esos, hay que volver a generar el HTML.

## De dónde sale esto

El original vive en `sitio/` dentro del repo **privado** de la app. Este repo es
solo una copia publicable: el código de la app no está aquí, porque Pages no
funciona en repos privados con plan gratuito.

**No edites nada aquí.** Los cambios se hacen en `sitio/` del repo de la app y se
publican desde ahí:

```bash
./scripts/completar-sitio.sh tucorreo@ejemplo.com "Tu nombre o razón social"  # solo si hay marcadores
git subtree push --prefix=sitio sitio main
```

El primer comando rellena el contacto y el titular; sin él quedan los marcadores
a la vista. El segundo empuja el contenido de `sitio/` a este repo, y Pages lo
despliega en un par de minutos.

## URLs

- Privacidad: `https://anallelycuriel.github.io/mananas-milagrosas-sitio/privacidad.html`
- Términos: `https://anallelycuriel.github.io/mananas-milagrosas-sitio/terminos.html`
- Borrar cuenta: `https://anallelycuriel.github.io/mananas-milagrosas-sitio/borrar-cuenta.html`

Esa dirección también sirve como **Site URL** en Supabase.
