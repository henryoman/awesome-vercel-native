# Awesome Native SDK [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Native desktop apps, examples, and resources built around Vercel Labs Native SDK.

Native SDK is a toolkit for building desktop apps with Zig, native-rendered UI, GPU surfaces, WebViews, automation, packaging, and an `app.zon` manifest.

## Contents

- [Official](#official)
- [Core APIs](#core-apis)
- [Frameworks](#frameworks)
- [Apps](#apps)
- [Examples](#examples)
- [Tooling](#tooling)

## Official

- [Native SDK](https://github.com/vercel-labs/native#readme) - Source repository for the Vercel Labs Native SDK.
- [Documentation](https://native-sdk.dev) - Official docs for building, testing, automating, and packaging Native SDK apps.
- [Quick Start](https://native-sdk.dev/quick-start) - Install the CLI, create an app, run it locally, and build it.

## Core APIs

- [Native SDK Package](https://github.com/vercel-labs/native/tree/main/packages/native-sdk#readme) - NPM package and CLI distribution for the SDK.
- [App Runtime](https://github.com/vercel-labs/native/tree/main/src/runtime) - App lifecycle, event loop, windows, effects, WebViews, GPU frames, and widget runtime.
- [Native UI](https://native-sdk.dev/docs/native-ui) - Declarative `.native` views, canvas widgets, model/update wiring, layout, and hot reload.
- [Platform Layer](https://github.com/vercel-labs/native/tree/main/src/platform) - Cross-platform windows, dialogs, menus, shortcuts, WebViews, GPU surfaces, and file drops.
- [Bridge](https://github.com/vercel-labs/native/tree/main/src/bridge) - Policy-controlled bridge between WebView JavaScript and Zig handlers.
- [Security](https://github.com/vercel-labs/native/tree/main/src/security) - Navigation, external-link, permission, and bridge policy primitives.
- [Automation](https://github.com/vercel-labs/native/tree/main/src/automation) - Built-in automation server for snapshots, screenshots, driving widgets, and smoke tests.
- [Packaging](https://native-sdk.dev/docs/packaging) - Build distributable desktop app bundles.

## Frameworks

- [Web Content](https://native-sdk.dev/docs/web-content) - Use WebView surfaces for existing web frontends or mixed native and web applications.
- [Next.js Example](https://github.com/vercel-labs/native/tree/main/examples/next#readme) - Native SDK shell around a Next.js frontend.
- [React Example](https://github.com/vercel-labs/native/tree/main/examples/react#readme) - Native SDK shell around a React frontend.
- [Svelte Example](https://github.com/vercel-labs/native/tree/main/examples/svelte#readme) - Native SDK shell around a Svelte frontend.
- [Vue Example](https://github.com/vercel-labs/native/tree/main/examples/vue#readme) - Native SDK shell around a Vue frontend.

## Apps

- [GIFBin](https://github.com/henryoman/gifbin#readme) - Native GIF creation app using a Native SDK GPU surface, canvas widgets, Zig state, drag and drop, native dialogs, image decoding, and GIF export.

## Examples

- [Official Examples](https://github.com/vercel-labs/native/tree/main/examples#readme) - Native SDK examples covering native UI, WebViews, framework shells, GPU surfaces, mobile embedding, and platform capabilities.
- [Calculator](https://github.com/vercel-labs/native/tree/main/examples/calculator#readme) - Small native UI app with markup, keyboard input, chrome shortcuts, and theming.
- [Canvas Preview](https://github.com/vercel-labs/native/tree/main/examples/canvas-preview#readme) - Mixed native canvas and WebView panes in one window.
- [GPU Dashboard](https://github.com/vercel-labs/native/tree/main/examples/gpu-dashboard#readme) - Dense native dashboard UI with GPU-rendered widgets.
- [Notes](https://github.com/vercel-labs/native/tree/main/examples/notes#readme) - Persistence example with effects, restore on boot, dialogs, and search.
- [Soundboard](https://github.com/vercel-labs/native/tree/main/examples/soundboard#readme) - Native media-style interface with cover art, context menus, timers, and custom theming.

## Tooling

- [Native SDK CLI](https://native-sdk.dev/docs/cli) - Commands for initializing, developing, checking, testing, building, packaging, and automating apps.
- [Native Markup Extension](https://github.com/vercel-labs/native/tree/main/editors/native-markup#readme) - Editor support for `.native` markup.
- [Agent Skills](https://native-sdk.dev/docs/agent-skills) - Native SDK guidance for AI agents working with Native SDK projects.

## Contributing

Contributions are welcome. Read [contributing.md](contributing.md) before opening a pull request.
