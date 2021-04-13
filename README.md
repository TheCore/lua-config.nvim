# lua-config.nvim
My personal configuration of NeoVim written entirely in Lua, focused on simplicity, moderate usage of plugins and limited number of VimScript inclusions. It is for those who want to have universal and extensible editor used mainly for writing code.

## Installation
1. Backup your `nvim` configuration directory.
```bash
$ cp -r ~/.config/nvim ~/.config/nvim.backup
```
2. Copy/Clone contents of this repository into `~/.config/nvim` directory.
3. Create directory for saving sessions.
```bash
$ mkdir -p ~/.local/share/nvim/site/sessions
```

## Images
![NeoVim User Interface screenshot with applied lua-config.nvim](static/ui.png)
![Fuzzy Finder Plugin pop-up](static/fzf.png)
