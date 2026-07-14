# Curation Rules

Awesome Native SDK is a focused list of public projects that are directly about, built with, or designed specifically for [Vercel Labs Native SDK](https://github.com/vercel-labs/native). It is not a general Zig, desktop-development, WebView, frontend, or Vercel ecosystem directory.

These rules are the canonical inclusion policy for the list. They apply to pull requests, project suggestions, and maintainer-added entries.

## Quick Scope Test

Review a candidate in this order:

1. Does it have a direct, verifiable Native SDK connection? If not, reject it.
2. Is it a real, documented project rather than starter content or a placeholder? If not, reject it.
3. Is it public, usable or reusable, and appropriately licensed? If not, defer it until those gaps are fixed.
4. If it is a library or package, would its main purpose disappear without Native SDK? If not, it belongs in a broader ecosystem list instead.
5. Does it fit an existing section under the definitions below? If not, defer it until several similar qualifying projects justify a new section.

## Core Requirements

Every entry must be:

- Publicly accessible without an account or private invitation.
- Directly connected to the official Native SDK repository, package, runtime, markup, APIs, or tooling.
- More than an empty scaffold, private experiment, announcement, mockup, or placeholder.
- Documented well enough to explain what it does, which platforms it supports, and how Native SDK is involved.
- Stable enough for another person to run, install, study, or reuse.
- Licensed or accompanied by clear usage terms when it contains reusable code.
- Linked through its canonical repository or project page.

Popularity, star count, ownership, and affiliation do not determine eligibility.

## Native SDK Connection

The linked project page must show verifiable evidence of its Native SDK connection. Useful evidence includes:

- an `app.zon` manifest;
- a Native SDK package or source dependency;
- `.native` markup or Native SDK Zig imports;
- Native SDK build, development, testing, automation, or packaging instructions;
- screenshots or releases of a Native SDK application;
- documentation describing a Native SDK-specific API or integration.

A repository name, topic, keyword, copied documentation, or passing mention is not enough.

## Libraries & Packages

A library or package qualifies only when it is reusable and designed specifically for Native SDK.

It must provide one or more of the following:

- Native SDK components, widgets, themes, effects, or view helpers;
- Native SDK bindings, bridge integrations, adapters, or platform capabilities;
- reusable `app.zon`, markup, automation, packaging, or build functionality;
- an installable API whose documented purpose is extending Native SDK applications.

The project's README must include a Native SDK usage example or clear integration instructions. It must also show a direct Native SDK dependency or other source-level integration.

The following do not qualify:

- generic Zig libraries, even when a listed app uses them;
- general HTTP, database, graphics, audio, image, cryptography, or utility packages;
- generic React, Vue, Svelte, Vite, WebView, or other frontend libraries;
- language-learning resources, broad resource collections, or other awesome lists;
- packages that merely mention Native SDK or include an unrelated Native SDK demo;
- dependencies that would have essentially the same purpose without Native SDK.

Use this practical test: if removing the Native SDK integration would leave the package's main purpose and value unchanged, it does not belong in this section.

Generic Zig libraries and learning resources should be submitted to broader ecosystem lists such as [Awesome Zig](https://github.com/zigcc/awesome-zig), not duplicated here.

## Section Definitions

- `Official` — canonical Native SDK links maintained by Vercel Labs.
- `Libraries & Packages` — reusable, installable libraries or packages designed specifically for Native SDK.
- `Framework Integrations` — maintained integrations that connect frontend frameworks or WebView stacks to Native SDK.
- `Apps` — usable public applications whose distributed or documented implementation uses Native SDK.
- `Examples` — focused demos, starters, experiments, and learning projects that teach a concrete Native SDK capability.
- `Skills` — installable agent skills designed specifically for Native SDK development.
- `Theme Packs` — reusable Native SDK themes and theme-specific resources.
- `Tooling` — developer tools for creating, editing, inspecting, testing, automating, packaging, or distributing Native SDK projects.

Choose the most specific section. Do not add a new section until several qualifying entries clearly require it.

## Apps

An app must do more than display generated starter content. Its public page should describe its actual functionality and provide visible Native SDK evidence. Screenshots, build instructions, tests, releases, and downloads strengthen an entry but do not replace source-level evidence.

A WebView app qualifies when Native SDK is the documented desktop shell or provides meaningful native capabilities. A normal website with an unused, abandoned, or proof-only shell does not qualify as an app.

## Examples

An example must demonstrate a specific, reusable Native SDK technique. An unchanged generated counter, renamed starter, empty shell, or unverified port does not qualify.

## Skills

A skill must directly help an agent build, modify, test, debug, package, or automate Native SDK projects. It must have a public, canonical `SKILL.md`, clear activation scope, and instructions that match a maintained Native SDK version.

Each entry must link directly to that canonical `SKILL.md`. Do not link to a registry profile, documentation index, containing directory, generated copy, or CLI-bundled reference file in place of the actual skill.

First-party Native SDK skills are preferred. A community skill must provide distinct Native SDK-specific guidance and show active maintenance. Generic Zig, TypeScript, frontend, testing, design, or agent-workflow skills do not qualify merely because they may be useful while building an app.

## Legacy Projects and Forks

Projects created under the earlier `zero-native` name may qualify when they still work with the official Native SDK lineage or retain clear, reusable technical value.

A fork must add meaningful functionality, platform support, documentation, or technical value. Unchanged mirrors and lightly renamed copies are excluded.

## Exclusions

Do not submit:

- archived, abandoned, inaccessible, or link-only projects;
- projects that merely mention or compare themselves with Native SDK;
- generic Zig, desktop, WebView, React Native, or Vercel AI SDK projects;
- paid-only resources without useful public documentation;
- affiliate, referral, tracking, or promotional links;
- duplicate entries or multiple links to the same project;
- misleading entries whose documentation does not match the checked-in implementation;
- generated or copied repositories with no distinct Native SDK value.

## Entry Format

Use one Markdown list item:

```md
- [Name](https://github.com/owner/repository#readme) - Clear, objective description.
```

Descriptions must:

- start with a capital letter and end with a period;
- explain what the project does and how Native SDK is used;
- mention supported platforms when useful;
- remain short, factual, and free of hype;
- omit stars, badges, release dates, rankings, and subjective claims.

Entries must be alphabetized by project name within their section.

## Maintainer Review

Meeting the mechanical requirements does not guarantee inclusion. Maintainers may request stronger evidence, edit descriptions, move entries, defer immature projects, or remove entries that become unavailable, abandoned, misleading, or incompatible with the list's scope.

Inclusion is not an endorsement.
