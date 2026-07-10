# Native SDK Themes

This directory sketches a proposed theme-pack layout for Native SDK.

Current Native SDK theme selection is manifest/API vocabulary:

```zig
.{
    .id = "com.example.app",
    .name = "example",
    .version = "0.1.0",
    .theme = "geist",
}
```

Today, `house` and `geist` are built-in theme packs wired through `ThemePack` and `DesignTokens.theme()`. This folder mirrors that setup with one Zig module per theme exporting `designTokens(color_scheme, contrast)`.

## Install

Copy a theme pack into an app-local `themes/` directory:

```sh
curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- all
```

Or install one theme:

```sh
curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- graphite
```

Then select a theme from `app.zon` once the SDK registry supports app-local theme modules:

```zig
.theme = "graphite"
```

For official built-ins, open a pull request to `vercel-labs/native` that adds `src/primitives/canvas/themes/<name>.zig` and wires it into the theme registry.

## Packs

- [House](house.zig) - the default built-in register.
- [Geist](geist.zig) - the built-in Geist register.
- [Cobalt](cobalt.zig) - a blue-accent example extending `house`.
- [Graphite](graphite.zig) - a dense neutral example extending `geist`.
- [Solarized](solarized.zig) - classic low-contrast warm/cyan theme pack.
- [Dracula](dracula.zig) - purple-accent editor theme with bright semantic colors.
- [Gruvbox](gruvbox.zig) - retro warm theme with earthy semantic hues.
- [Nord](nord.zig) - cool arctic theme with blue-gray surfaces.
- [Monokai](monokai.zig) - high-energy classic editor palette with green and cyan accents.
- [One Dark](one_dark.zig) - Atom-style neutral dark theme with blue accents.
- [Tokyo Night](tokyo_night.zig) - deep blue editor theme with vivid syntax-inspired hues.
- [Catppuccin](catppuccin.zig) - soft pastel theme with Latte/Mocha-style light and dark palettes.
- [Rose Pine](rose_pine.zig) - muted rose and pine palette with soft rounded surfaces.
- [GitHub](github.zig) - familiar GitHub-style light and dark UI palette.

See [SPEC.md](SPEC.md) for the loader and validation contract.
