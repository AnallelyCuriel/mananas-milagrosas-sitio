# Sitio de Mañanas Milagrosas

Tres páginas estáticas para publicar en GitHub Pages. Las dos tiendas exigen que
la política de privacidad esté en una URL pública, y esto es lo mínimo que cumple.

- `index.html` — portada, con enlaces a las otras dos
- `privacidad.html` — política de privacidad
- `terminos.html` — términos de uso
- `estilo.css` — los mismos colores que la app, y se adapta a modo claro y oscuro

Los textos salen de `docs/privacidad.md` y `docs/terminos.md`. Si cambias esos,
hay que volver a generar el HTML.

## Antes de publicar

```bash
./completar.sh tucorreo@ejemplo.com "Tu nombre o razón social"
```

Eso rellena el contacto y el titular en las tres páginas. Sin eso quedan los
marcadores a la vista.

## Publicar en GitHub Pages

1. Crea un repositorio **público** en github.com, por ejemplo `mananas-milagrosas`.
2. Sube el contenido de esta carpeta (los archivos sueltos, no la carpeta).
3. En el repositorio: **Settings → Pages → Source: Deploy from a branch**,
   rama `main`, carpeta `/ (root)`. Guardar.
4. En un par de minutos queda en:
   `https://TU-USUARIO.github.io/mananas-milagrosas/`

Las URLs que piden las tiendas son entonces:

- Privacidad: `https://TU-USUARIO.github.io/mananas-milagrosas/privacidad.html`
- Términos: `https://TU-USUARIO.github.io/mananas-milagrosas/terminos.html`

Esa dirección también sirve como **Site URL** en Supabase.
