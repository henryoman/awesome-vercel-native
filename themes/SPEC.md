# Theme Pack Spec

Theme packs should be Zig modules, exactly like the current built-in Geist pack.

No token DSL. No separate theme manifest. A theme is a Zig file that exports:

```zig
pub fn designTokens(
    color_scheme: canvas.ColorScheme,
    contrast: canvas.ColorContrast,
) canvas.DesignTokens
```

That is the same shape as `src/primitives/canvas/themes/geist.zig` in Native SDK.

## Current Path

The current built-in path is:

```txt
app.zon .theme = "geist"
  -> app_runner.manifestThemePack()
  -> canvas.ThemePack.fromName("geist")
  -> ThemeOptions.pack = .geist
  -> DesignTokens.theme(options)
  -> geist.designTokens(color_scheme, contrast)
```

The proposed change is only to make that registry accept more Zig modules:

```txt
app.zon .theme = "cobalt"
  -> app_runner.manifestThemePack()
  -> theme registry resolves "cobalt"
  -> cobalt.designTokens(color_scheme, contrast)
```

## Directory Layout

Each theme is one Zig source file:

```txt
themes/
  house.zig
  geist.zig
  cobalt.zig
  graphite.zig
  solarized.zig
  dracula.zig
```

The file stem and manifest-facing theme name should match.

## Selection

Apps still select themes with `app.zon`:

```zig
.{
    .id = "com.example.app",
    .name = "example",
    .version = "0.1.0",
    .theme = "cobalt",
}
```

The app manifest selects a theme by name. It does not inline tokens.

## Pack Shape

A pack can be full custom code, or it can extend a built-in pack with overrides:

```zig
const native_sdk = @import("native_sdk");
const canvas = native_sdk.canvas;

pub fn designTokens(
    color_scheme: canvas.ColorScheme,
    contrast: canvas.ColorContrast,
) canvas.DesignTokens {
    return canvas.DesignTokens.themeWithOverrides(.{
        .color_scheme = color_scheme,
        .contrast = contrast,
        .pack = .house,
    }, .{
        .colors = .{
            .accent = canvas.Color.rgb8(21, 94, 239),
            .accent_text = canvas.Color.rgb8(255, 255, 255),
            .focus_ring = canvas.Color.rgb8(21, 94, 239),
        },
        .radius = .{ .sm = 6, .md = 6, .lg = 8, .xl = 12 },
    });
}
```

That keeps theme authoring as close as possible to the existing SDK implementation.

## Resolver

The SDK needs a registry instead of an enum-only parser.

Current:

```zig
pub const ThemePack = enum {
    house,
    geist,
};
```

Target:

```zig
pub const ThemePack = union(enum) {
    builtin: BuiltinThemePack,
    module: ThemeModule,
};
```

Resolution order:

1. App-local `themes/<name>.zig`
2. Installed theme package modules
3. SDK built-ins such as `house` and `geist`

Unknown names stay build errors, but the error should list all discovered names.

## Install

The easiest install flow should copy or vendor the Zig module into the app:

```sh
curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- dracula
```

```txt
my-app/
  app.zon
  themes/
    cobalt.zig
```

Then:

```zig
.theme = "cobalt"
```

For package installs later, the package should still expose the same thing: a Zig module with `designTokens(...)`.

Official built-ins should be proposed directly in `vercel-labs/native` by adding `src/primitives/canvas/themes/<name>.zig` and wiring the name into the SDK theme registry.

## Validation

Every theme must resolve to a complete `DesignTokens` value for:

- light + standard contrast
- dark + standard contrast
- light + high contrast
- dark + high contrast

The validator should reject:

- missing `themes/<name>.zig`
- missing `designTokens(color_scheme, contrast)`
- file/name mismatch
- incomplete resolved tokens
- unknown theme names
- required foreground/background contrast failures

## Tests

Every promoted theme should include:

- a reference preview surface
- light and dark captures
- high-contrast captures
- a pinned render signature
- a test that resolves it through the same registry as `house` and `geist`

That is what makes a new theme interchangeable with the built-ins.
