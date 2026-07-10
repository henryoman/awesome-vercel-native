# Awesome Native SDK [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Native desktop apps, examples, and resources built around Vercel Labs Native SDK.

Native SDK is a toolkit for building desktop apps with Zig, native-rendered UI, GPU surfaces, WebViews, automation, packaging, and an `app.zon` manifest.

## Contents

- [Official](#official)
- [Packages](#packages)
- [Core APIs](#core-apis)
- [Framework Integrations](#framework-integrations)
- [Apps](#apps)
- [Examples](#examples)
- [Themes](#themes)
- [Tooling](#tooling)

## Official

- [Native SDK](https://github.com/vercel-labs/native#readme) - Source repository for the Vercel Labs Native SDK.
- [Documentation](https://native-sdk.dev) - Official docs for building, testing, automating, and packaging Native SDK apps.
- [Quick Start](https://native-sdk.dev/quick-start) - Install the CLI, create an app, run it locally, and build it.

## Packages

- [Native SDK Package](https://native-sdk.dev/packages) - NPM package and CLI distribution for the SDK.

## Core APIs

- [App Runtime](https://github.com/vercel-labs/native/tree/main/src/runtime) - App lifecycle, event loop, windows, effects, WebViews, GPU frames, and widget runtime.
- [Native UI](https://native-sdk.dev/native-ui) - Declarative `.native` views, canvas widgets, model/update wiring, layout, and hot reload.
- [Platform Layer](https://github.com/vercel-labs/native/tree/main/src/platform) - Cross-platform windows, dialogs, menus, shortcuts, WebViews, GPU surfaces, and file drops.
- [Bridge](https://github.com/vercel-labs/native/tree/main/src/bridge) - Policy-controlled bridge between WebView JavaScript and Zig handlers.
- [Security](https://github.com/vercel-labs/native/tree/main/src/security) - Navigation, external-link, permission, and bridge policy primitives.
- [Automation](https://github.com/vercel-labs/native/tree/main/src/automation) - Built-in automation server for snapshots, screenshots, driving widgets, and smoke tests.
- [Packaging](https://native-sdk.dev/packaging) - Build distributable desktop app bundles.

## Framework Integrations

- [Frontend Integration](https://native-sdk.dev/frontend) - Use existing web frontends in Native SDK apps.
- [WebViews](https://native-sdk.dev/webviews) - Embed and compose WebView surfaces alongside native UI.
- [Next.js Example](https://github.com/vercel-labs/native/tree/main/examples/next#readme) - Native SDK shell around a Next.js frontend.
- [React Example](https://github.com/vercel-labs/native/tree/main/examples/react#readme) - Native SDK shell around a React frontend.
- [Svelte Example](https://github.com/vercel-labs/native/tree/main/examples/svelte#readme) - Native SDK shell around a Svelte frontend.
- [Vue Example](https://github.com/vercel-labs/native/tree/main/examples/vue#readme) - Native SDK shell around a Vue frontend.

## Apps

- [Audiobook Maker](https://github.com/lichen0114/audiobook-maker/tree/main/desktop#readme) - Native macOS audiobook generation app for a Kokoro TTS backend using Native SDK markup, Zig state, native file picking, and bundled Python, MLX, FFmpeg, and espeak runtime dependencies.
- [Chutes E2EE Native SDK Proof](https://github.com/alex-drocks/chutes-e2ee-chat-nativesdk#readme) - Native-rendered proof app for encrypted Chutes.ai chat requests using Zig, Native markup, `fx.fetch`, and Native SDK automation.
- [Compressor](https://github.com/sonnylazuardi/image-compressor-native-sdk#readme) - Native Windows image compressor using Native markup, Zig state, native file dialogs, drag and drop, and Bun-powered WebP encoding.
- [GIFBin](https://github.com/henryoman/gifbin#readme) - Native GIF creation app using a Native SDK GPU surface, canvas widgets, Zig state, drag and drop, native dialogs, image decoding, and GIF export.
- [Press](https://github.com/Lulzx/press#readme) - Native macOS video compressor using Native SDK, Zig, drag and drop, file dialogs, live FFmpeg progress, and quality presets.
- [Token Tach](https://github.com/phall1/token-tach#readme) - Native macOS menu bar app for AI coding-agent token usage using Native SDK, Zig, Metal rendering, local ledger tailing, and a vendored Native SDK fork for popover and status-item support.

## Examples

- [Official Examples](https://github.com/vercel-labs/native/tree/main/examples#readme) - Native SDK examples covering native UI, WebViews, framework shells, GPU surfaces, mobile embedding, and platform capabilities.
- [Calculator](https://github.com/vercel-labs/native/tree/main/examples/calculator#readme) - Small native UI app with markup, keyboard input, chrome shortcuts, and theming.
- [Canvas Preview](https://github.com/vercel-labs/native/tree/main/examples/canvas-preview#readme) - Mixed native canvas and WebView panes in one window.
- [GPU Dashboard](https://github.com/vercel-labs/native/tree/main/examples/gpu-dashboard#readme) - Dense native dashboard UI with GPU-rendered widgets.
- [Notes](https://github.com/vercel-labs/native/tree/main/examples/notes#readme) - Persistence example with effects, restore on boot, dialogs, and search.
- [Soundboard](https://github.com/vercel-labs/native/tree/main/examples/soundboard#readme) - Native media-style interface with cover art, context menus, timers, and custom theming.

## Themes

- [Theme Pack Spec](https://github.com/henryoman/awesome-native-sdk/blob/main/themes/SPEC.md) - Proposed `theme.zon` folder format for theme packs that resolve to the same `DesignTokens` shape as the built-in `house` and `geist` packs.
- [House](https://github.com/henryoman/awesome-native-sdk/blob/main/themes/house/theme.zon) - Default monochrome neutral register.
- [Geist](https://github.com/henryoman/awesome-native-sdk/blob/main/themes/geist/theme.zon) - Built-in Geist-inspired register with cool neutrals, blue focus, 6px controls, and a taller control ladder.
- [Cobalt](https://github.com/henryoman/awesome-native-sdk/blob/main/themes/cobalt/theme.zon) - Example blue-accent theme pack extending `house`.
- [Graphite](https://github.com/henryoman/awesome-native-sdk/blob/main/themes/graphite/theme.zon) - Example dense neutral theme pack extending `geist`.

## Tooling

- [Native SDK CLI](https://native-sdk.dev/cli) - Commands for initializing, developing, checking, testing, building, packaging, and automating apps.
- [Native Markup Extension](https://github.com/vercel-labs/native/tree/main/editors/native-markup#readme) - Editor support for `.native` markup.
- [Agent Skills](https://native-sdk.dev/skills) - Native SDK guidance for AI agents working with Native SDK projects.

## Contributing

Contributions are welcome. Read [contributing.md](contributing.md) before opening a pull request.
