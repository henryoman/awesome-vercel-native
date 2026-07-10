# Theme Pack Spec

This is a proposed `theme.zon` contract for Native SDK theme packs. The goal is simple: external themes should be interchangeable with built-in packs like `house` and `geist`.

## Current Behavior

The current built-in path is:

```txt
app.zon .theme = "geist"
  -> app_runner.manifestThemePack()
  -> canvas.ThemePack.fromName("geist")
  -> ThemeOptions.pack = .geist
  -> DesignTokens.theme(options)
  -> geist.designTokens(color_scheme, contrast)
```

`geist` is currently an enum case, and `src/primitives/canvas/themes/geist.zig` exports a function shaped like:

```zig
pub fn designTokens(color_scheme: ColorScheme, contrast: ColorContrast) DesignTokens
```

That is the compatibility target for file-backed themes.

## Directory Layout

Each theme gets a folder named after the manifest-facing theme id:

```txt
themes/
  cobalt/
    theme.zon
    preview.native
    README.md
```

Only `theme.zon` is required. Preview and docs files are optional but recommended for theme galleries and visual regression tests.

## Selection

Apps keep selecting themes with `app.zon`:

```zig
.{
    .id = "com.example.app",
    .name = "example",
    .version = "0.1.0",
    .theme = "cobalt",
}
```

The app manifest selects a theme by id. It should not inline token values.

## Resolution

A theme id should resolve in this order:

1. App-local `themes/<id>/theme.zon`
2. Installed theme packages
3. SDK built-ins such as `house` and `geist`

Unknown names remain build errors. The error should list every valid id discovered by the resolver.

## Token Contract

Every theme pack must resolve to a complete `DesignTokens` value for each pair:

- light + standard contrast
- dark + standard contrast
- light + high contrast
- dark + high contrast

The loader may accept partial token files when `.extends` is set, but validation must run after inheritance so renderers always receive complete tokens.

The layering order is:

```txt
base pack -> theme.zon overrides -> runtime options -> runtime-stamped values
```

Runtime options include color scheme, contrast, density, and reduced motion. Runtime-stamped values include pixel scale and platform text measurement.

## File Shape

Allowed top-level fields:

- `.schema_version`
- `.id`
- `.name`
- `.description`
- `.extends`
- `.kind`
- `.source`
- `.exports`
- `.tokens`

`kind`, `source`, and `exports` are mainly for representing built-ins during migration. Normal file-backed themes should use `.extends` plus `.tokens`.

```zig
.{
    .schema_version = 1,
    .id = "cobalt",
    .name = "Cobalt",
    .extends = "house",

    .tokens = .{
        .colors = .{
            .light = .{
                .accent = "#155eef",
                .accent_text = "#ffffff",
                .focus_ring = "#155eef",
            },
            .dark = .{
                .accent = "#84adff",
                .accent_text = "#07111f",
                .focus_ring = "#84adff",
            },
        },
        .radius = .{
            .sm = 6,
            .md = 6,
            .lg = 8,
            .xl = 12,
        },
    },
}
```

The file is declarative. Computed themes can still exist as Zig modules, but imported user themes should use the same resulting token model.

Colors should use hex strings:

```txt
#rrggbb
#rrggbbaa
```

## Required Validation

The loader should reject:

- unknown top-level fields
- unknown token names
- invalid hex colors
- ids that do not match their folder name
- missing `.extends` when the token file is partial
- unresolved `.extends`
- incomplete resolved tokens for any scheme/contrast pair
- insufficient foreground/background contrast for required text pairs

## Built-In Migration

`house` and `geist` can stay as Zig sources internally, but they should be exposed through the same registry as file-backed themes.

The target API is a resolver, not an enum-only parser:

```zig
pub fn resolveThemePack(name: []const u8) ?ThemePack
```

Then both built-ins and external packs feed the same token path:

```zig
pub fn designTokens(pack: ThemePack, options: ThemeOptions) DesignTokens
```

That keeps app code stable:

```zig
.theme = app_runner.manifestThemePack()
```

while allowing `theme.zon` packs to behave like first-class built-ins.

## Test Contract

Every promoted theme should include:

- a reference preview surface
- light and dark captures
- high-contrast captures
- a pinned render signature
- a validation test that resolves the pack through the same path as `house` and `geist`

That is what makes a new theme interchangeable instead of just visually similar.
