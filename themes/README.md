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

Today, `house` and `geist` are built-in theme packs wired through `ThemePack` and `DesignTokens.theme()`. This folder proposes a file-backed format where user themes can resolve through that same path instead of becoming a separate styling system.

## Packs

- [House](house/theme.zon) - the default built-in register.
- [Geist](geist/theme.zon) - the built-in Geist register.
- [Cobalt](cobalt/theme.zon) - a blue-accent example extending `house`.
- [Graphite](graphite/theme.zon) - a dense neutral example extending `geist`.

See [SPEC.md](SPEC.md) for the loader and validation contract.
