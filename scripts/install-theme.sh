#!/bin/sh
set -eu

repo_raw_base="${THEME_BASE_URL:-https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/themes}"
theme="${1:-}"
dest_dir="${2:-themes}"
themes="house geist cobalt graphite solarized dracula gruvbox nord monokai one_dark tokyo_night catppuccin rose_pine github"

usage() {
    echo "usage: install-theme.sh <theme-name|all> [destination-dir]" >&2
    echo "example: curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- all" >&2
}

case "$theme" in
    ""|-h|--help)
        usage
        exit 0
        ;;
    *[!abcdefghijklmnopqrstuvwxyz0123456789_+-]*)
        echo "invalid theme name: $theme" >&2
        echo "theme names may only contain lowercase letters, numbers, _, +, and -" >&2
        exit 1
        ;;
esac

mkdir -p "$dest_dir"

install_one() {
    theme_name="$1"
    file_name="${theme_name}.zig"
    url="${repo_raw_base}/${file_name}"

    if [ -e "${dest_dir}/${file_name}" ]; then
        echo "skipping existing ${dest_dir}/${file_name}"
        return 0
    fi

    tmp_file="${dest_dir}/.${file_name}.tmp"
    curl -fsSL "$url" -o "$tmp_file"
    mv "$tmp_file" "${dest_dir}/${file_name}"
    echo "installed ${file_name} to ${dest_dir}/"
}

trap 'rm -f "${dest_dir}"/.*.zig.tmp' EXIT HUP INT TERM

if [ "$theme" = "all" ]; then
    for theme_name in $themes; do
        install_one "$theme_name"
    done

    echo "installed theme pack to ${dest_dir}/"
    echo "select one with: .theme = \"geist\""
else
    install_one "$theme"
    echo "select it with: .theme = \"${theme}\""
fi
