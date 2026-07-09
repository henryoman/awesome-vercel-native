# Awesome Native SDK [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Native desktop apps built with Vercel Labs Native SDK.

Native SDK is a toolkit for building desktop applications with Zig, declarative Native markup, native-rendered UI, GPU surfaces, WebViews when needed, automation, packaging, and app manifests.

## Contents

- [Official](#official)
- [Native SDK Libraries](#native-sdk-libraries)
- [Apps](#apps)
- [Official Examples](#official-examples)
- [Documentation](#documentation)
- [Related Libraries](#related-libraries)
- [Tooling](#tooling)

## Official

- [Native SDK](https://github.com/vercel-labs/native#readme) - Vercel Labs toolkit for building native desktop apps with Zig, Native markup, native rendering, WebView panes, automation, and packaging.
- [Native SDK Docs](https://native-sdk.dev) - Official documentation for the CLI, app model, Native UI, components, automation, capabilities, packaging, and platform support.
- [Quick Start](https://native-sdk.dev/quick-start) - Install the CLI, scaffold an app, run `native dev`, validate with `native check`, test with `native test`, and build a release binary.
- [Platform Support](https://native-sdk.dev/docs/platform-support) - Current support matrix for macOS, Linux, Windows, iOS, Android, and WebView surfaces.

## Native SDK Libraries

- [Native SDK Package](https://github.com/vercel-labs/native/tree/main/packages/native-sdk#readme) - NPM package and CLI distribution for installing the SDK, running `native`, and exposing TypeScript definitions.
- [SDK Root Exports](https://github.com/vercel-labs/native/blob/main/src/root.zig) - Public Zig entrypoint that re-exports the app runtime, platform layer, canvas, automation, bridge, security, frontend, embed, assets, and tooling APIs.
- [App Runtime](https://github.com/vercel-labs/native/tree/main/src/runtime) - Core event loop, app model, windows, effects, timers, sessions, WebViews, GPU canvas frames, and widget runtime.
- [UiApp](https://github.com/vercel-labs/native/blob/main/src/runtime/ui_app.zig) - Model, message, update, and view loop for native-rendered Native SDK apps.
- [Canvas Runtime](https://github.com/vercel-labs/native/blob/main/src/runtime/view_canvas.zig) - Native-rendered canvas surface integration for widget trees and GPU surfaces.
- [Canvas Widgets](https://github.com/vercel-labs/native/blob/main/src/runtime/view_widget_control.zig) - Native widget runtime for controls, text, scrolling, trees, charts, context menus, layout, semantics, and accessibility.
- [Canvas Images](https://github.com/vercel-labs/native/blob/main/src/runtime/canvas_images.zig) - Runtime image registration and limits for native canvas views.
- [Canvas Fonts](https://github.com/vercel-labs/native/blob/main/src/runtime/canvas_fonts.zig) - Font loading and text rendering support for native canvas surfaces.
- [Markdown Rendering](https://native-sdk.dev/components/markdown) - Render Markdown content as native widget trees.
- [Platform Layer](https://github.com/vercel-labs/native/tree/main/src/platform) - Cross-platform windowing, WebView, GPU surface, dialog, menu, tray, shortcut, and file-drop abstractions.
- [macOS Platform](https://github.com/vercel-labs/native/tree/main/src/platform/macos) - macOS host implementation with Metal surfaces, native windows, menus, dialogs, scroll behavior, and system WebView support.
- [Linux Platform](https://github.com/vercel-labs/native/tree/main/src/platform/linux) - Linux host implementation for desktop windows, input, rendering, and WebView support.
- [Windows Platform](https://github.com/vercel-labs/native/tree/main/src/platform/windows) - Win32 host implementation for Windows desktop apps.
- [iOS Platform](https://github.com/vercel-labs/native/tree/main/src/platform/ios) - Experimental iOS embedding support.
- [Android Platform](https://github.com/vercel-labs/native/tree/main/src/platform/android) - Experimental Android embedding support.
- [Frontend Integration](https://github.com/vercel-labs/native/tree/main/src/frontend) - Helpers for loading framework dev servers and packaged frontend assets.
- [Bridge](https://github.com/vercel-labs/native/tree/main/src/bridge) - Policy-controlled command bridge between WebView JavaScript and Zig handlers.
- [Security](https://github.com/vercel-labs/native/tree/main/src/security) - Navigation, external link, permission, and bridge security policies.
- [Automation](https://github.com/vercel-labs/native/tree/main/src/automation) - Embedded automation server, protocol, snapshots, and watcher support for driving running apps.
- [Effects](https://github.com/vercel-labs/native/blob/main/src/runtime/effects.zig) - Runtime effects for process work, fetches, files, clipboard, timers, and audio.
- [Embed](https://github.com/vercel-labs/native/tree/main/src/embed) - C ABI and host APIs for embedding Native SDK apps in mobile and external hosts.
- [Assets](https://github.com/vercel-labs/native/tree/main/src/assets) - Asset serving and packaged asset support for app resources.
- [Window State](https://github.com/vercel-labs/native/tree/main/src/window_state) - Persistence helpers for window placement and sizing.
- [Debug](https://github.com/vercel-labs/native/tree/main/src/debug) - Runtime diagnostics and debugging helpers.
- [Extensions](https://github.com/vercel-labs/native/tree/main/src/extensions) - Extension points for SDK integrations.
- [JavaScript Support](https://github.com/vercel-labs/native/tree/main/src/js) - WebView integration code for JavaScript-facing APIs.
- [Build Helpers](https://github.com/vercel-labs/native/tree/main/build) - Build graph helpers used by full Native SDK projects.
- [Tooling](https://github.com/vercel-labs/native/tree/main/src/tooling) - SDK tooling internals used by checks, generated projects, and development workflows.

## Apps

- [GIFBin](https://github.com/henryoman/gifbin#readme) - Native GIF creation app using a Native SDK GPU surface, Native SDK canvas widgets, Zig state management, drag and drop, native dialogs, image decoding, and GIF export.

## Official Examples

- [Calculator](https://github.com/vercel-labs/native/tree/main/examples/calculator#readme) - Complete small app with a Native markup keypad, keyboard input, chrome shortcuts, and theming.
- [Notes](https://github.com/vercel-labs/native/tree/main/examples/notes#readme) - Persistence example with effects, restore on boot, dialogs, and search.
- [Soundboard](https://github.com/vercel-labs/native/tree/main/examples/soundboard#readme) - Album grid with decoded cover art, context menus, timers, and a custom theme.
- [Deck](https://github.com/vercel-labs/native/tree/main/examples/deck#readme) - Dense hardware-style music player built from the same widgets as Soundboard with different design tokens and chrome.
- [Feed](https://github.com/vercel-labs/native/tree/main/examples/feed#readme) - Large virtualized list example for high-volume scrolling surfaces.
- [WebView Examples](https://github.com/vercel-labs/native/tree/main/examples#readme) - Official examples covering WebView composition, web-frontend shells, guarded OS capabilities, and mobile embedding.

## Documentation

- [App Model](https://native-sdk.dev/docs/app-model) - Guide to the model, message, update, and view loop used by Native SDK apps.
- [Native UI](https://native-sdk.dev/docs/native-ui) - Guide to `.native` markup, components, layout, bindings, messages, hot reload, and native-rendered widgets.
- [Components](https://native-sdk.dev/components) - Catalog of built-in controls including buttons, lists, tabs, text inputs, dialogs, charts, split panes, and virtual lists.
- [Automation](https://native-sdk.dev/docs/automation) - Snapshot, drive, assert, record, replay, and screenshot running Native SDK applications through the embedded automation server.
- [Packaging](https://native-sdk.dev/docs/packaging) - Build distributable app bundles from Native SDK projects.
- [Web Content](https://native-sdk.dev/docs/web-content) - Use WebView surfaces for existing web frontends or mixed native and web applications.

## Related Libraries

- [Zig](https://ziglang.org/) - Systems programming language used by Native SDK apps for app state, update logic, native integration, and build graphs.
- [msf_gif](https://github.com/notnullnotvoid/msf_gif#readme) - Small C GIF encoder used by GIFMaker for animated GIF export.

## Tooling

- [Native SDK CLI](https://native-sdk.dev/docs/cli) - Command-line tool for initializing, developing, checking, testing, building, packaging, and automating Native SDK apps.
- [Native Markup Extension](https://github.com/vercel-labs/native/tree/main/editors/native-markup#readme) - Editor support for `.native` markup.
- [Agent Skills](https://native-sdk.dev/docs/agent-skills) - Native SDK guidance shipped for AI agents building, inspecting, and testing Native SDK apps.

## Contributing

Contributions are welcome. Read [contributing.md](contributing.md) before opening a pull request.
