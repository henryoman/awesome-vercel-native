# Contributing

Thanks for helping improve Awesome Native SDK. This is a curated list: inclusion is based on usefulness, documentation, and a verifiable connection to [Vercel Labs Native SDK](https://github.com/vercel-labs/native), not popularity.

The canonical eligibility and section policy lives in [rules.md](rules.md). Read it before suggesting a project or opening a pull request. When this guide and the rules appear to differ, `rules.md` controls.

## Ways to Contribute

- Open a pull request to add or update an entry.
- Use the [project suggestion form](https://github.com/henryoman/awesome-vercel-native/issues/new?template=project-suggestion.yml) if you found a project but cannot prepare a pull request.
- Open a regular issue for broken links, moved repositories, or incorrect descriptions.

Project owners are welcome to submit their own work. Please disclose that you are the owner or maintainer in the pull request.

## What Qualifies

Every submission must satisfy all applicable requirements in [the curation rules](rules.md). In summary, an entry must be:

- Publicly accessible without an account or private invitation.
- Directly about Native SDK, or built with the official Vercel Labs Native SDK repository or package; Zero Native projects do not qualify.
- More than an empty scaffold, private experiment, announcement, or placeholder.
- Documented well enough to explain what it does, which platforms it supports, and how Native SDK is used.
- Stable enough for another person to run, install, study, or reuse.
- Licensed or accompanied by clear usage terms when it contains reusable code.

For apps, the repository or project page should provide visible evidence that it uses Native SDK. Good evidence includes an `app.zon`, Native SDK dependency, source code, build instructions, screenshots, or a release/download page.

Projects built against Zero Native do not qualify. Forks qualify only when they remain compatible with the official Vercel Labs Native SDK and add meaningful technical value.

Libraries and packages receive an additional scope check: they must be designed specifically for Native SDK and provide reusable Native SDK functionality. A generic Zig or frontend library does not qualify merely because a Native SDK app uses it. See [Libraries & Packages](rules.md#libraries--packages) for the complete rule and examples.

Do not submit:

- Archived, abandoned, inaccessible, or link-only projects.
- Projects that merely mention Native SDK.
- Generic Zig, desktop, WebView, React Native, or Vercel AI SDK projects.
- Paid-only resources with no useful public documentation.
- Affiliate links, tracking URLs, referral codes, or marketing copy.
- Duplicate entries or several links to the same project.

## Choose a Section

- `Official` — official Native SDK links maintained by Vercel Labs.
- `Libraries & Packages` — reusable, installable libraries or packages designed specifically for Native SDK.
- `Framework Integrations` — frontend and WebView integrations.
- `Apps` — usable public applications built with Native SDK.
- `Examples` — focused demos, starters, and learning projects.
- `Skills` — installable agent skills designed specifically for Native SDK development. Link directly to the skill's canonical `SKILL.md`.
- `Theme Packs` — themes and theme-related resources.
- `Tooling` — CLIs, editor support, automation, and developer tools.

Add a new section only when several qualifying entries clearly need one.

## Add an Entry

1. Fork the repository and create a branch.
2. Add the entry to the most specific section in `README.md`.
3. Keep entries alphabetized by project name within that section.
4. Use one project per pull request when possible.
5. Run the list checks.
6. Open a pull request and complete the provided checklist.

Use this format:

```md
- [Name](https://github.com/owner/repository#readme) - Clear, objective description.
```

Entry rules:

- Link directly to the canonical project page or repository.
- For a skill, link directly to its canonical `SKILL.md`.
- Use `#readme` for a GitHub repository when appropriate.
- Start the description with a capital letter and end it with a period.
- Explain what the project does and how it uses Native SDK.
- Mention supported platforms when that information is useful.
- Keep the description short, factual, and free of hype.
- Do not repeat the project name at the start of the description.
- Do not add stars, badges, release dates, or subjective claims.

## Validate Your Change

Run the same pinned check used by continuous integration:

```sh
npx --yes awesome-lint@2.3.0
```

Also open every URL you added and confirm it is public and points to the intended page.

## Pull Request Checklist

Before submitting, confirm that:

- You read and followed [rules.md](rules.md).
- The project meets every requirement in **What Qualifies**.
- A library or package is Native SDK-specific rather than a generic Zig or frontend dependency.
- A skill links directly to its canonical `SKILL.md` rather than a registry page, directory, or bundled reference file.
- The linked page explicitly shows its Native SDK connection.
- The entry is in the correct section and alphabetized.
- The description is factual and follows the required format.
- All added links work without signing in.
- `npx --yes awesome-lint@2.3.0` passes.
- You disclosed whether you own or maintain the submitted project.

Maintainers may edit descriptions for consistency, request stronger evidence, move an entry to a different section, or decline entries that do not yet meet the curation standard. Inclusion is not an endorsement and may be revisited if a project becomes unavailable or unmaintained.
