# Linacre College Music Society logo

A lyre with the letters Alpha and Omega, and a shell at its base.

The SVGs are the masters. Every PNG is rendered from them by `render.sh`.

## Which file to use

| Folder | File | Use it for |
|---|---|---|
| `colour/` | `linacre-music-colour-background` | The default. Avatars, slides, merchandise, anywhere the logo sits in its own dark square. |
| `colour/` | `linacre-music-colour-transparent` | Placing the full-colour logo on your own background. It works best on mid-to-dark backgrounds. On white, the gold has weak contrast. |
| `greyscale/` | `linacre-music-greyscale-background` | Greyscale printing, keeping the dark square. |
| `greyscale/` | `linacre-music-greyscale-transparent` | Greyscale on your own background (mid-to-dark is best). |
| `one-colour/` | `linacre-music-black-transparent` | One-ink printing, documents, stamps, engraving, light backgrounds. |
| `one-colour/` | `linacre-music-white-transparent` | Dark backgrounds and photographs. |

Each version comes as an `.svg` file plus PNGs:

| Suffix | Size (px) | Typical use |
|---|---|---|
| `-4096.png` | 4096 × 4096 | Print (about 35 cm at 300 dpi) and posters. |
| `-1024.png` | 1024 × 1024 | Web, slides and social media. |
| `-256.png` | 256 × 256 | Avatars, email signatures and thumbnails. |

Prefer the SVG wherever the software accepts it: it scales to any size without losing quality.

## Colours

| Element | Colour | Greyscale |
|---|---|---|
| Background | `#1F1A17` | `#1B1B1B` |
| Lyre | `#F8C301` | `#CACACA` |
| Alpha and Omega | `#FF0000` | `#7F7F7F` |
| Shell | `#FFFFFF` | `#FFFFFF` |
| Outlines | the background colour | the background colour |

The greyscale values keep each colour's perceived brightness. Simply desaturating instead would make the red letters almost as dark as the background.

In the transparent versions, the outline around the shell and its feet stays as dark line-work. The gaps where the strings pass behind the letters are see-through.

## Regenerating the PNGs

```sh
./render.sh
```

This needs `rsvg-convert` (`apt install librsvg2-bin` or `brew install librsvg`).

## How it was made

`source/` holds the starting point:

- `LinacreCollegeMusicLogo-original.png`: the old low-resolution logo (536 × 536).
- `LinacreCollegeMusicLogo-trace.svg`: a faithful vector reconstruction of that PNG, matching its edges to within about 0.1–0.2 px.

The logo was then refined from the trace:

- Every outline was redrawn with a small number of smooth curves, staying within about 1–2 px of the original.
- The strings were made even (vertical, 3.66 px wide, 18.32 px apart).
- The shell and feet were made symmetric.
- The strings, crossbar, shell and feet were all centred on the lyre's axis (x = 265).
- The lyre's two arms were kept slightly asymmetric, as in the original.

Each element is a complete shape. The lyre continues as a full U-shaped frame behind the shell, and the strings run down to it.
