# Packages that enhance Yazi + Kitty terminal

Install these on Arch:

```bash
# Core (you likely have most)
sudo pacman -S --needed \
  yazi ffmpeg imagemagick poppler resvg \
  jq glow hexyl mediainfo perl-image-exiftool \
  eza bat fd ripgrep fzf zoxide \
  ouch 7zip \
  mpv imv wl-clipboard

# Optional but excellent
sudo pacman -S --needed \
  ffmpegthumbnailer \
  chafa \
  trash-cli \
  lazygit
```

| Package | What Yazi uses it for |
|---------|------------------------|
| **ffmpeg** | Video frame previews (built-in) |
| **imagemagick** | TIFF / HEIC / odd image formats |
| **poppler** | PDF page previews (`pdftoppm`) |
| **resvg** | Fast SVG preview |
| **jq** | JSON pretty preview (built-in) |
| **glow** | Markdown rendered preview |
| **hexyl** | Binary / unknown files |
| **eza** | Directory tree in preview pane |
| **ouch** | Archive list + extract (CLI — no plugin needed) |
| **mediainfo** / **exiftool** | Media metadata |
| **bat** | Alternative syntax highlight via piper |
| **zoxide** | Jump to frecent dirs (`z` key) |
| **fzf** | Fuzzy find integration |
| **mpv** / **imv** | Open video / images |

## Yazi plugins

```bash
ya pkg add yazi-rs/plugins:git
ya pkg add yazi-rs/plugins:piper
ya pkg add yazi-rs/plugins:smart-enter
ya pkg add yazi-rs/plugins:smart-paste
ya pkg add yazi-rs/plugins:full-border
ya pkg add yazi-rs/plugins:toggle-pane
ya pkg add yazi-rs/plugins:jump-to-char
ya pkg add yazi-rs/plugins:chmod
ya pkg add yazi-rs/plugins:mount
ya pkg add yazi-rs/plugins:smart-filter
ya pkg add yazi-rs/plugins:zoom
ya pkg add yazi-rs/plugins:vcs-files
ya pkg add yazi-rs/plugins:zoxide
ya pkg add yazi-rs/plugins:fzf
```

> **Note:** Archive preview uses the `ouch` **CLI** via `piper` — you do **not** need the `ouch.yazi` plugin.

Or from this config's `package.toml`:

```bash
ya pkg install
```
