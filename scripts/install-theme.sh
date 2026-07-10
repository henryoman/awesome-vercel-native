#!/bin/sh
set -eu

repo_raw_base="${THEME_BASE_URL:-https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/themes}"
theme="${1:-}"
dest_dir="${2:-themes}"

usage() {
    echo "usage: install-theme.sh <theme-name> [destination-dir]" >&2
    echo "example: curl -fsSL https://raw.githubusercontent.com/henryoman/awesome-native-sdk/main/scripts/install-theme.sh | sh -s -- dracula" >&2
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

file_name="${theme}.zig"
url="${repo_raw_base}/${file_name}"

mkdir -p "$dest_dir"

if [ -e "${dest_dir}/${file_name}" ]; then
    echo "refusing to overwrite ${dest_dir}/${file_name}" >&2
    exit 1
fi

tmp_file="${dest_dir}/.${file_name}.tmp"
trap 'rm -f "$tmp_file"' EXIT HUP INT TERM

curl -fsSL "$url" -o "$tmp_file"
mv "$tmp_file" "${dest_dir}/${file_name}"

echo "installed ${file_name} to ${dest_dir}/"
echo "select it with: .theme = \"${theme}\""
