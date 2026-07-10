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

  const install = "curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- dracula";
</script>

<main>
  <header>
    <h1>Native SDK Themes</h1>
    <p>Zig theme packs shaped like the built-in Geist theme.</p>
    <code>{install}</code>
  </header>

  <section class="grid" aria-label="Theme packs">
    {#each themes as theme}
      <article>
        <div class="swatches" aria-hidden="true">
          {#each theme[2] as color}
            <span style={`background: ${color}`}></span>
          {/each}
        </div>
        <h2>{theme[0]}</h2>
        <p>{theme[1]}</p>
        <a href={`../../themes/${theme[0]}.zig`}>View Zig</a>
      </article>
    {/each}
  </section>
</main>

<style>
  :global(*) {
    box-sizing: border-box;
  }

  :global(body) {
    margin: 0;
    font-family:
      Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    color: #18181b;
    background: #f7f7f8;
  }

  main {
    width: min(1120px, calc(100vw - 32px));
    margin: 0 auto;
    padding: 32px 0;
  }

  header {
    display: grid;
    gap: 10px;
    margin-bottom: 24px;
  }

  h1 {
    margin: 0;
    font-size: 28px;
    line-height: 1.15;
  }

  h2 {
    margin: 0;
    font-size: 16px;
    line-height: 1.25;
  }

  p {
    margin: 0;
    color: #5f6368;
    line-height: 1.5;
  }

  code {
    display: block;
    width: 100%;
    overflow-x: auto;
    padding: 10px 12px;
    border: 1px solid #d8d8dc;
    border-radius: 6px;
    background: #ffffff;
    color: #222226;
    font-size: 13px;
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
    gap: 12px;
  }

  article {
    display: grid;
    gap: 10px;
    min-height: 156px;
    padding: 14px;
    border: 1px solid #dedee3;
    border-radius: 8px;
    background: #ffffff;
  }

  .swatches {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 6px;
  }

  .swatches span {
    height: 34px;
    border: 1px solid rgb(0 0 0 / 12%);
    border-radius: 5px;
  }

  a {
    color: #0958d9;
    font-weight: 600;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }
</style>
