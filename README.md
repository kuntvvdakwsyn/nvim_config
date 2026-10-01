# 🚀 My Neovim Configuration

Welcome to my personal Neovim setup! Built for speed, efficiency, and a minimalist workflow powered by Catppuccin.

## 📦 Installation

``` bash
git clone https://github.com/kuntvvdakwsyn/nvim_config/ && cd nvim_config && python3 installer.py
```

## ⌨️ Keybindings

### Files & Buffers
- space + w — Save file
- space + q — Quit file
- space + n — New file
- space + d — Close buffer
- shift + j / k — Cycle next / prev buffer
- space + e / ed — Open / close file explorer

### Navigation & LSP
- gd — Go to definition
- space + k — Show hover info
- space + rn — Rename symbol
- space + rr / re — Show / open diagnostics
- [d / ]d — Prev / next diagnostic

### Tools & Search
- space + ff — Find files
- space + fg — Live grep
- space + l — Lazy menu

## 🔌 Plugins

- bufferline.lua: Upper tabline bar for windows and buffers.
- cmp.lua: Completion engine (autocomplete).
- colorscheme.lua: Visual theme (Catppuccin).
- cord.lua: Discord Rich Presence integration (shows what you are editing).
- devicons.lua: File and folder icons.
- lsp.lua: Language Server Protocol (LSP) configuration.
- mason.lua: Portable manager for LSPs, linters, and formatters.
- nvim-autopairs.lua: Automatic closing for brackets and quotes.
- nvim-tree.lua: File explorer sidebar.
- reader-markdown.lua: Markdown rendering and preview.
- telescope.lua: Fast fuzzy finder for files, text, and tools.
