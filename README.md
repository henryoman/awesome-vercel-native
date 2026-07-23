<p align="center">
  <img src="assets/nativesdkawesomelist.png" alt="Vercel Native SDK Awesome List" width="100%">
</p>

<p align="center">
  <a href="https://awesome.re"><img src="https://awesome.re/badge.svg" alt="Awesome"></a>
</p>

> A community-curated collection of apps, examples, themes, and tools built with Native SDK, an open-source project from [Vercel Labs](https://github.com/vercel-labs).

[Native SDK](https://native-sdk.dev) is Vercel's open-source toolkit for building fast, lightweight desktop apps with Zig, native-rendered interfaces, GPU surfaces, WebViews, automation, cross-platform packaging, and an `app.zon` manifest.

## Contents

- [Official](#official)
- [Libraries & Packages](#libraries--packages)
- [Framework Integrations](#framework-integrations)
- [Apps](#apps)
- [Examples](#examples)
- [Skills](#skills)
- [Tooling](#tooling)

## Official

- [Changelog](https://github.com/vercel-labs/native/blob/main/CHANGELOG.md) - Version-by-version record of Native SDK features, component additions, fixes, and migration notes.
- [Native SDK](https://github.com/vercel-labs/native#readme) - Source repository for the Vercel Labs Native SDK.
- [Philosophy](https://native-sdk.dev/introduction) - Design principles behind Native SDK's native rendering, explicit state model, simple authoring, customizable defaults, and agent-driven workflows.
- [Quick Start](https://native-sdk.dev/quick-start) - Install the CLI, create an app, run it locally, and build it.

## Libraries & Packages

- [Component Catalog](https://native-sdk.dev/components) - Official catalog of the 46 documented native-rendered component families, with Native markup, TypeScript and Zig examples, builder equivalents, generated attribute references, and engine-rendered previews.
- [Media Surface](https://native-sdk.dev/components/media-surface) - Native SDK 0.5.3 component for presenting externally produced RGBA textures such as video, camera, or custom-renderer frames through a model-bound surface ID.
- [Native SDK Package](https://native-sdk.dev/packages) - NPM package and CLI distribution for the SDK.
- [Tooltip](https://native-sdk.dev/components/tooltip) - Runtime-managed anchored tooltip with hover intent, keyboard-focus behavior, configurable delay, and deterministic automation support.

## Framework Integrations

- [Frontend Integration](https://native-sdk.dev/frontend) - Use existing web frontends in Native SDK apps.
- [Next.js Example](https://github.com/vercel-labs/native/tree/main/examples/next#readme) - Native SDK shell around a Next.js frontend.
- [React Example](https://github.com/vercel-labs/native/tree/main/examples/react#readme) - Native SDK shell around a React frontend.
- [Svelte Example](https://github.com/vercel-labs/native/tree/main/examples/svelte#readme) - Native SDK shell around a Svelte frontend.
- [Vite Integration](https://github.com/vercel-labs/native/pull/98) - Native SDK shell for an existing Vite project, with frontend configuration, environment-based source selection, and development origin setup.
- [Vue Example](https://github.com/vercel-labs/native/tree/main/examples/vue#readme) - Native SDK shell around a Vue frontend.
- [WebViews](https://native-sdk.dev/webviews) - Embed and compose WebView surfaces alongside native UI.

## Apps

- [Audiobook Maker](https://github.com/lichen0114/audiobook-maker/tree/main/desktop#readme) - Native macOS audiobook generation app for a Kokoro TTS backend using Native SDK markup, Zig state, native file picking, and bundled Python, MLX, FFmpeg, and espeak runtime dependencies.
- [Artemis](https://github.com/boydvoid/artemis#readme) - Early macOS and Linux database browser for PostgreSQL and SQLite using a Native SDK WebView shell, Zig-native database drivers, and a React data grid.
- [Chutes E2EE Native SDK Proof](https://github.com/alex-drocks/chutes-e2ee-chat-nativesdk#readme) - Native-rendered proof app for encrypted Chutes.ai chat requests using Zig, Native markup, `fx.fetch`, and Native SDK automation.
- [Compressor](https://github.com/sonnylazuardi/compressor#readme) - Native Windows image compressor using Native markup, Zig state, native file dialogs, drag and drop, and Bun-powered WebP encoding.
- [GIFBin](https://github.com/henryoman/gifbin#readme) - Native GIF creation app using a Native SDK GPU surface, canvas widgets, Zig state, drag and drop, native dialogs, image decoding, and GIF export.
- [Hyper Term](https://github.com/phodal/hyper-term#readme) - macOS-first terminal and coding-agent workspace using Native SDK for native chrome, a Rust-owned PTY bridge, and an anchored system WebView for terminal rendering.
- [Inbox Zero Mail](https://github.com/inbox-zero/inbox-zero-mail/tree/main/NativeApp#readme) - Cross-platform Gmail and Outlook client rendered with Native SDK and Zig, with OAuth, native multi-window composition, search, message actions, and deterministic tests.
- [Lavalamp](https://github.com/root-daemon/lavalamp-rewritten#readme) - Local AI coding assistant with a Native SDK desktop client for sessions, streamed conversations, tool results, permissions, questions, and composer workflows.
- [Lumiveo](https://github.com/fujahgabriel/Lumiveo#readme) - macOS app-demo video editor using a Native SDK Zig and WebView shell, React and Remotion editing, native dialogs, and a bundled local worker.
- [Maat](https://github.com/lzitser23/maat#readme) - Local-first macOS and Windows visual asset manager using Native SDK, Zig, React, SQLite, native file operations, and a system WebView.
- [Mac Cleaner](https://github.com/jellydn/mac-cleaner#readme) - Native macOS cleaner dashboard using Native SDK markup and Zig to run Mole status, cleanup, optimization, purge, and history commands.
- [Mousemove](https://github.com/wjx/mousemove#readme) - Native Windows mouse activity utility using Native SDK canvas rendering, raw input handling, background timers, and a click-through desktop overlay.
- [OCPP DebugKit Studio](https://github.com/ocpp-debugkit/studio#readme) - Early-stage native OCPP charging-session debugger built with Zig and Native SDK, with macOS/Linux CI and automation-driven smoke testing.
- [OfficeMachine Music](https://github.com/brianrabil/officemachine/tree/main/apps/music-player#readme) - Local-first macOS music player rendered entirely with Native SDK, with album browsing, search, native menus, cover art, playback controls, and a persistent queue.
- [OfficeMachine Video](https://github.com/brianrabil/officemachine/tree/main/apps/video-editor#readme) - Local-first video editor using Native SDK, React, Remotion, native project files, local media storage, and an optional AI editing agent.
- [openbar2000](https://github.com/atresnjo/openbar2000#readme) - Native macOS audio player using Native SDK markup and TypeScript core logic with local-file playback, Spotify integration, keyboard controls, and a bundled Rust helper.
- [Petdex Desktop](https://github.com/crafter-station/petdex/tree/main/packages/petdex-desktop-native#readme) - Native desktop-pet renderer using Native SDK, atlas-backed animation, model-driven pet states, and automation-based screenshot testing without a WebView or sidecar.
- [Plaza](https://github.com/zig-nostr/plaza#readme) - Fast, local-first Nostr client built with Zig and Native SDK, with native-rendered feeds, profiles, relays, search, and cross-platform CI.
- [Press](https://github.com/Lulzx/press#readme) - Native macOS video compressor using Native SDK, Zig, drag and drop, file dialogs, live FFmpeg progress, and quality presets.
- [Project Orbit](https://github.com/Tarachand-Gupta/project-orbit#readme) - AI sandbox game shipping a macOS and Linux desktop shell built with Native SDK, a system WebView, and a Zig bridge.
- [Signet](https://github.com/zig-nostr/signet#readme) - Native macOS Nostr signer using a Native SDK and Zig approval interface for NIP-46 requests handled by an isolated daemon.
- [SkillManager](https://github.com/TudorAndrei/SkillManager#readme) - macOS and Linux agent-skill manager using Native SDK, Zig bridge commands, and a React WebView to discover, install, update, and remove skills.
- [Token Tach](https://github.com/phall1/token-tach#readme) - Native macOS menu bar app for AI coding-agent token usage using Native SDK, Zig, Metal rendering, local ledger tailing, and a vendored Native SDK fork for popover and status-item support.
- [Video Transcribe](https://github.com/stevederico/video-transcribe-mac#readme) - Native macOS transcription app using Native SDK markup and a TypeScript core with local whisper.cpp and optional xAI speech-to-text backends.
- [Widgoal](https://github.com/eyadhammouda/widgoal#readme) - Native macOS football score widget using Native SDK native views, a Metal GPU surface, ESPN score data, league and team following, and live menu bar updates.
- [xvibe](https://github.com/ErzenXz/xvibe#readme) - Cross-platform native command center for Codex, Claude, and OpenCode using Native SDK markup, Zig process effects, streaming output, cancellation, and diff verification.

## Examples

- [AI Chat (TypeScript)](https://github.com/vercel-labs/native/tree/main/examples/ai-chat-ts#readme) - Official zero-Zig example using a TypeScript app core, Native markup, an OpenAI-compatible fetch effect, environment-supplied configuration, and deterministic record and replay.
- [Calculator](https://github.com/vercel-labs/native/tree/main/examples/calculator#readme) - Small native UI app with markup, keyboard input, chrome shortcuts, and theming.
- [Canvas Preview](https://github.com/vercel-labs/native/tree/main/examples/canvas-preview#readme) - Mixed native canvas and WebView panes in one window.
- [GPU Dashboard](https://github.com/vercel-labs/native/tree/main/examples/gpu-dashboard#readme) - Dense native dashboard UI with GPU-rendered widgets.
- [Hello Native](https://github.com/qiuzhanghua/hello-native#readme) - Focused native-rendered counter example using Native SDK markup, a Zig model and update loop, GPU surfaces, hot reload, and UI tests.
- [Notes](https://github.com/vercel-labs/native/tree/main/examples/notes#readme) - Persistence example with effects, restore on boot, dialogs, and search.
- [Official Examples](https://github.com/vercel-labs/native/tree/main/examples#readme) - Native SDK examples covering native UI, WebViews, framework shells, GPU surfaces, mobile embedding, and platform capabilities.
- [PULSE](https://github.com/dirnbauer/webconsulting-typo3-lab/tree/main/apps/news-native-studio#readme) - Native-rendered TYPO3 editorial-cockpit prototype using Zig and Native markup to demonstrate newsroom workflows, context menus, command navigation, and deterministic UI tests without a WebView.
- [Soundboard](https://github.com/vercel-labs/native/tree/main/examples/soundboard#readme) - Native media-style interface with cover art, context menus, timers, and custom theming.
- [Split Collapse](https://github.com/vercel-labs/native/tree/main/examples/split-collapse#readme) - Official native-rendered example comparing runtime, markup-declared, and manual pane-collapse animation while measuring frame pacing and optional WebView reflow.
- [∅M〇ᶻ Native Biu Demo](https://github.com/mindon/native-biu-demo#readme) - Minimal zero-config Native SDK demo using `.native` markup, Zig state, hot reload, testing, and the Biu/Bun ecosystem.

## Skills

- [Native SDK](https://github.com/vercel-labs/native/blob/main/skills/native-sdk/SKILL.md) - Official installable skill that teaches coding agents to discover and load version-matched Native SDK guidance from the CLI.

## Tooling

- [Native SDK CLI](https://native-sdk.dev/cli) - Commands for initializing, developing, checking, testing, building, packaging, and automating apps.
- [Native Markup Extension](https://github.com/vercel-labs/native/tree/main/editors/native-markup#readme) - Editor support for `.native` markup.
- [Themes](https://github.com/henryoman/awesome-vercel-native/tree/main/themes#readme) - Browse Native SDK themes, open the visual gallery, install packs, and read the theme-pack specification.

## Contributing

Built something with Native SDK? Read the [curation rules](rules.md) and [contribution guide](contributing.md) before opening a pull request, or [suggest a project](https://github.com/henryoman/awesome-vercel-native/issues/new?template=project-suggestion.yml) if you found something that should be reviewed.

<p align="center">
  <a href="https://x.com/ctatedev/status/2075016514860650685"><u>Join the conversation</u></a>
</p>
