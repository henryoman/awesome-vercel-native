# Contributing

Thanks for helping improve Awesome Native SDK.

This list is for high-quality resources that help people build with Vercel Labs Native SDK. Keep it curated. A smaller useful list is better than a large noisy one.

## Adding an Entry

- Make sure the resource is directly about Native SDK or is a real app, example, package, tool, theme, or integration built for Native SDK.
- Add the entry to the most specific existing section.
- Add a new section only when there are several entries that clearly belong together.
- Use one entry per pull request when possible.
- Do not add duplicates.
- Do not add your own project unless it is public, documented, and useful to other Native SDK developers.

## Quality Standards

Entries should be:

- Publicly accessible.
- Actively useful, not just a placeholder repository.
- Documented well enough that someone can understand what it does.
- Specific to Native SDK.
- Stable enough to recommend.

Entries should not be:

- Archived or abandoned.
- Empty scaffolds or private experiments.
- Mostly unrelated projects that only mention Native SDK.
- Paid-only resources with no useful public material.
- Marketing pages without technical value.

## Entry Format

Use this format:

```md
- [Name](https://example.com#readme) - Clear, objective description.
```

Rules:

- Use a direct URL.
- Use `#readme` for GitHub repositories when appropriate.
- Start descriptions with a capital letter.
- End descriptions with a period.
- Keep descriptions short and factual.
- Do not start the description by repeating the entry name.
- Do not use hype words like "best", "awesome", "amazing", or "ultimate".

## Sections

- `Official` is for official Native SDK links.
- `Packages` is for installable Native SDK packages.
- `Core APIs` is for main SDK APIs and documentation.
- `Framework Integrations` is for official frontend/WebView integration resources.
- `Apps` is for public apps built with Native SDK.
- `Examples` is for examples and demos.
- `Themes` is for theme packs and theme tooling.
- `Tooling` is for CLIs, editor support, automation, and developer tools.

## Pull Request Checklist

Before opening a pull request:

- Check that the link works.
- Check that the entry belongs in the selected section.
- Keep entries alphabetized within a section unless there is a clear reason not to.
- Run:

```sh
bunx awesome-lint
```

If `awesome-lint` reports a problem, fix it before submitting.
