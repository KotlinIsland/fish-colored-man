# fish-colored-man-pages

Color-enabled man pages plugin for fish-shell.

![ss1](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot.png)

## Install

With [Fisherman](https://github.com/fisherman/fisherman)

```fish
fisher install decors/fish-colored-man-pages
```

## Color options

If you want to change the colors, add the following options to your `config.fish`.

![ss2](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot2.png)

```fish
# Solarized Dark & Green highlight
set -g plugin_colored_man_pages_blink (set_color -o red)
set -g plugin_colored_man_pages_bold (set_color -o green)
set -g plugin_colored_man_pages_standout (set_color 93a1a1; set_color -b black)
set -g plugin_colored_man_pages_underline (set_color -u 93a1a1)
```

```fish
# Solarized Light & Magenta highlight
set -g plugin_colored_man_pages_blink (set_color -o red)
set -g plugin_colored_man_pages_bold (set_color -o magenta)
set -g plugin_colored_man_pages_standout (set_color 586e75; set_color -b white)
set -g plugin_colored_man_pages_underline (set_color -u 586e75)
```