# Oxford Postgraduate Orchestra logo

The words OXFORD POST-GRADUATE ORCHESTRA above a five-line music staff.

The SVGs are the masters. Every PNG is rendered from them by `render.sh`.

## Which file to use

| Folder | File | Use it for |
|---|---|---|
| `colour/` | `oxford-postgraduate-orchestra-colour-background` | The default. Avatars, slides, posters, anywhere the logo sits in its own Oxford Blue square. |
| `colour/` | `oxford-postgraduate-orchestra-colour-transparent` | Placing the colour logo on your own **dark or mid-tone** background. The staff lines are white, so they disappear on white or pale backgrounds. |
| `greyscale/` | `oxford-postgraduate-orchestra-greyscale-background` | Greyscale printing, keeping the dark square. |
| `greyscale/` | `oxford-postgraduate-orchestra-greyscale-transparent` | Greyscale on your own **dark or mid-tone** background (white staff lines, as above). |
| `one-colour/` | `oxford-postgraduate-orchestra-black-transparent` | Light backgrounds, documents, one-ink printing. |
| `one-colour/` | `oxford-postgraduate-orchestra-white-transparent` | Dark backgrounds and photographs. |

Each version comes as an `.svg` file plus PNGs:

| Suffix | Size (px) | Typical use |
|---|---|---|
| `-4096.png` | 4096 × 4096 | Print (about 35 cm at 300 dpi) and posters. |
| `-1024.png` | 1024 × 1024 | Web, slides and social media. |
| `-256.png` | 256 × 256 | Avatars, email signatures and thumbnails. |

Prefer the SVG wherever the software accepts it: it scales to any size without losing quality.

## Colours and type

| Element | Colour | Greyscale |
|---|---|---|
| Background | `#002147` (Oxford Blue) | `#212121` |
| Text | `#A48862` | `#8C8C8C` |
| Staff lines | `#FFFFFF` | `#FFFFFF` |

The greyscale values keep each colour's perceived brightness.

The text is set in **Montserrat ExtraBold** (weight 800). It uses letter spacing of −55/1000 em and line spacing of 0.766 em, with kerning off. It is left-aligned at 63.14 px per em on the 500 px canvas.

In the SVGs the text has been converted to outlines, so the font does not need to be installed. Montserrat is free under the SIL Open Font License; it is available from [Google Fonts](https://fonts.google.com/specimen/Montserrat) for setting new text to match.

## Regenerating the PNGs

```sh
./render.sh
```

This needs `rsvg-convert` (`apt install librsvg2-bin` or `brew install librsvg`).

## How it was made

`source/` holds the starting point:

- `Logo-Dark-original.png`: the only available copy of the logo (500 × 500).
- `Logo-Dark-faithful.svg`: a faithful vector recreation of that PNG. Its text edges match the PNG to within about 0.08 px on average. It keeps the original's staff lines as they were: tilted by 0.25° and slightly uneven.

The font was identified by fitting candidate fonts to the PNG and comparing their edges. Montserrat ExtraBold (2017 or later version), set without kerning, matched to within about 0.06 px on average. Every other version and weight tested was clearly worse.

The variants here use straightened staff lines. They are horizontal, evenly spaced 6.8 px apart and all 1.7 px thick, left-aligned with the text.
