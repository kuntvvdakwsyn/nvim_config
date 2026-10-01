# 🚀 My Neovim Configuration

Welcome to my personal Neovim setup! Built for speed, efficiency, and a minimalist workflow powered by Catppuccin.

## 📦 Installation

git clone https://github.com/kuntvvdakwsyn/nvim_config/ && cd nvim_config && python3 installer.py

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

- bufferline.lua: Bara de taburi superioară pentru ferestre și buffere.
- cmp.lua: Motorul de autocompletare (autocomplete).
- colorscheme.lua: Tema vizuală (Catppuccin).
- cord.lua: Integrare Discord Rich Presence (arată ce editezi).
- devicons.lua: Iconițe pentru fișiere și directoare.
- lsp.lua: Configurația pentru Language Server Protocol (LSP).
- mason.lua: Manager portabil pentru LSP-uri, linters și formatters.
- nvim-autopairs.lua: Închiderea automată a parantezelor și ghilimelelor.
- nvim-tree.lua: Navigatorul de fișiere (file tree sidebar).
- reader-markdown.lua: Randare și previzualizare pentru fișiere Markdown.
- telescope.lua: Căutare rapidă de fișiere, text și unelte (fuzzy finder).
