<script>
  const themes = [
    ["house", "Default monochrome neutral register.", ["#ffffff", "#171717", "#737373"]],
    ["geist", "Cool neutrals, blue focus, taller controls.", ["#000000", "#ededed", "#47a8ff"]],
    ["cobalt", "Blue-accent pack extending house.", ["#ffffff", "#155eef", "#84adff"]],
    ["graphite", "Dense neutral pack extending Geist.", ["#0d0f12", "#2f333a", "#8ab4ff"]],
    ["solarized", "Classic warm/cyan palette.", ["#fdf6e3", "#002b36", "#268bd2"]],
    ["dracula", "Purple editor palette with bright semantics.", ["#282a36", "#bd93f9", "#ff79c6"]],
    ["gruvbox", "Warm retro palette.", ["#fbf1c7", "#282828", "#689d6a"]],
    ["nord", "Arctic blue-gray palette.", ["#eceff4", "#2e3440", "#88c0d0"]],
    ["monokai", "Classic high-energy editor palette.", ["#272822", "#a6e22e", "#66d9ef"]],
    ["one_dark", "Atom-style neutral dark palette.", ["#282c34", "#61afef", "#98c379"]],
    ["tokyo_night", "Deep blue editor palette.", ["#1a1b26", "#7aa2f7", "#bb9af7"]],
    ["catppuccin", "Soft pastel Latte/Mocha palette.", ["#eff1f5", "#1e1e2e", "#cba6f7"]],
    ["rose_pine", "Muted rose and pine palette.", ["#faf4ed", "#191724", "#c4a7e7"]],
    ["github", "Familiar GitHub-style UI palette.", ["#ffffff", "#0d1117", "#0969da"]],
  ];

  const install = "curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- all";
  const sourceBase = "https://github.com/henryoman/awesome-native-sdk/blob/main/themes";
  const repoUrl = "https://github.com/henryoman/awesome-native-sdk";
  const vercelUrl = "https://vercel.com";
  const editUrl = "https://github.com/henryoman/awesome-native-sdk/edit/main/tools/theme-gallery/src/App.svelte";
  let copied = false;

  async function copyInstall() {
    await navigator.clipboard.writeText(install);
    copied = true;
    setTimeout(() => {
      copied = false;
    }, 1400);
  }
</script>

<main>
  <nav aria-label="Site">
    <span></span>
    <div class="nav-icons">
      <a class="icon-link" href={repoUrl} aria-label="Open GitHub repository">
        <svg aria-hidden="true" viewBox="0 0 24 24">
          <path
            d="M12 .5a12 12 0 0 0-3.79 23.39c.6.11.82-.26.82-.58v-2.02c-3.34.73-4.04-1.42-4.04-1.42-.55-1.39-1.34-1.76-1.34-1.76-1.09-.75.08-.73.08-.73 1.21.09 1.85 1.24 1.85 1.24 1.07 1.84 2.81 1.31 3.5 1 .11-.78.42-1.31.76-1.61-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.12-.3-.54-1.53.12-3.18 0 0 1.01-.32 3.3 1.23A11.5 11.5 0 0 1 12 6a11.5 11.5 0 0 1 2.99.4c2.29-1.55 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.82 1.1.82 2.22v3.3c0 .32.22.7.83.58A12 12 0 0 0 12 .5Z"
          />
        </svg>
      </a>
      <a class="icon-link" href={vercelUrl} aria-label="Open Vercel">
        <svg aria-hidden="true" viewBox="0 0 24 24">
          <path d="M12 3 23 21H1L12 3Z" />
        </svg>
      </a>
    </div>
  </nav>

  <header>
    <div>
      <h1>Native SDK</h1>
      <p>Theme packs shaped like the built-in Geist theme.</p>
    </div>
    <section class="install" aria-label="Install command">
      <div class="install-title">
        <div>
          <h2>Download all themes</h2>
          <p>Copies every Zig theme pack into an app-local <code>themes/</code> folder.</p>
        </div>
        <button type="button" aria-label="Copy install command" on:click={copyInstall}>
          {#if copied}
            <span aria-hidden="true">✓</span>
          {:else}
            <svg aria-hidden="true" viewBox="0 0 24 24">
              <rect x="9" y="9" width="10" height="10" rx="2"></rect>
              <path d="M5 15V7a2 2 0 0 1 2-2h8"></path>
            </svg>
          {/if}
        </button>
      </div>
      <code class="command">{install}</code>
    </section>
  </header>

  <section class="grid" aria-label="Theme packs">
    {#each themes as theme}
      <a class="card" href={`${sourceBase}/${theme[0]}.zig`}>
        <div class="swatches" aria-hidden="true">
          {#each theme[2] as color}
            <span style={`background: ${color}`}></span>
          {/each}
        </div>
        <div class="title">
          <h2>{theme[0]}</h2>
          <span aria-hidden="true">→</span>
        </div>
        <p>{theme[1]}</p>
      </a>
    {/each}
  </section>

  <footer>
    <a href={editUrl}>Edit this page on GitHub</a>
    <span>© 2026 <a href={repoUrl}>Henry Oman / Awesome Native SDK</a></span>
  </footer>
</main>

<style>
  :global(*) {
    box-sizing: border-box;
  }

  :global(body) {
    margin: 0;
    font-family:
      Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    color: #ededed;
    background: #000000;
  }

  main {
    width: min(1180px, calc(100vw - 32px));
    margin: 0 auto;
    padding: 34px 0;
  }

  nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 16px;
    margin-bottom: 28px;
  }

  .nav-icons {
    display: flex;
    align-items: center;
    gap: 14px;
  }

  .icon-link {
    display: grid;
    place-items: center;
    width: 22px;
    height: 22px;
    color: #ffffff;
    opacity: 0.88;
  }

  .icon-link:hover {
    opacity: 1;
  }

  .icon-link:focus-visible {
    outline: 2px solid #47a8ff;
    outline-offset: 4px;
  }

  .icon-link svg {
    width: 22px;
    height: 22px;
    fill: currentColor;
  }

  header {
    display: grid;
    grid-template-columns: minmax(0, 1fr);
    gap: 14px;
    margin-bottom: 18px;
  }

  h1 {
    margin: 0;
    font-size: 30px;
    line-height: 1.15;
    letter-spacing: 0;
  }

  h2 {
    margin: 0;
    font-size: 16px;
    line-height: 1.25;
    letter-spacing: 0;
  }

  p {
    margin: 0;
    color: #a0a0a0;
    line-height: 1.45;
  }

  .install {
    display: grid;
    gap: 10px;
    padding: 12px;
    border: 1px solid rgb(255 255 255 / 14%);
    border-radius: 8px;
    background: #0a0a0a;
  }

  .install-title {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    gap: 12px;
  }

  .install-title div {
    display: grid;
    gap: 3px;
    min-width: 0;
  }

  .install-title code {
    padding: 0;
    border: 0;
    background: transparent;
    color: #ededed;
    font-size: inherit;
  }

  button {
    display: grid;
    place-items: center;
    flex: 0 0 auto;
    width: 32px;
    height: 32px;
    border: 1px solid rgb(255 255 255 / 14%);
    border-radius: 6px;
    background: #111111;
    color: #ededed;
    cursor: pointer;
  }

  button:hover {
    border-color: rgb(71 168 255 / 70%);
  }

  button:focus-visible {
    outline: 2px solid #47a8ff;
    outline-offset: 2px;
  }

  button svg {
    width: 16px;
    height: 16px;
    fill: none;
    stroke: currentColor;
    stroke-width: 2;
    stroke-linecap: round;
    stroke-linejoin: round;
  }

  button span {
    font-size: 15px;
    line-height: 1;
  }

  .command {
    display: block;
    width: 100%;
    overflow-x: auto;
    padding: 11px 12px;
    border: 1px solid rgb(255 255 255 / 14%);
    border-radius: 6px;
    background: #000000;
    color: #ededed;
    font-size: 13px;
    line-height: 1.45;
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
    gap: 12px;
  }

  .card {
    display: grid;
    gap: 10px;
    align-content: start;
    min-height: 146px;
    padding: 14px;
    border: 1px solid rgb(255 255 255 / 14%);
    border-radius: 8px;
    background: #0a0a0a;
    color: inherit;
    text-decoration: none;
    transition:
      border-color 140ms ease,
      background 140ms ease,
      transform 140ms ease;
  }

  .card:hover {
    border-color: rgb(71 168 255 / 70%);
    background: #111111;
    transform: translateY(-1px);
  }

  .card:focus-visible {
    outline: 2px solid #47a8ff;
    outline-offset: 2px;
  }

  .swatches {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 6px;
  }

  .swatches span {
    height: 34px;
    border: 1px solid rgb(255 255 255 / 16%);
    border-radius: 5px;
  }

  .title {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    min-width: 0;
  }

  .title span {
    display: grid;
    place-items: center;
    flex: 0 0 auto;
    width: 24px;
    height: 24px;
    border: 1px solid rgb(255 255 255 / 14%);
    border-radius: 999px;
    color: #ededed;
    line-height: 1;
  }

  footer {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 10px 16px;
    margin-top: 28px;
    padding-top: 18px;
    border-top: 1px solid rgb(255 255 255 / 14%);
    color: #737373;
    font-size: 13px;
  }

  footer a {
    color: #ededed;
    text-decoration: none;
  }

  footer a:hover {
    text-decoration: underline;
  }
</style>
