# vimrc Modernization TODOs

## Vim (incremental improvements, no migration required)

- [ ] Replace **Vundle** with [vim-plug](https://github.com/junegunn/vim-plug)
- [ ] Replace **CtrlP** with [fzf.vim](https://github.com/junegunn/fzf.vim) + ripgrep
- [ ] Replace **ConqueTerm** with the built-in `:term` (Vim 8+); update `,h` mapping
- [ ] Replace **checksyntax_vim** with [ALE](https://github.com/dense-analysis/ale) for async linting; update `,k` mapping
- [ ] Replace **vim-multiple-cursors** with [vim-visual-multi](https://github.com/mg979/vim-visual-multi) (active successor)
- [ ] Remove deprecated `ttyfast` setting
- [ ] Remove `set nocompatible` (implicit in modern Vim when a vimrc exists)

## Neovim Migration

- [ ] Install Neovim and set up config at `~/.config/nvim/`
- [ ] Replace **vim-plug** (or Vundle) with [lazy.nvim](https://github.com/folke/lazy.nvim)
- [ ] Port `.vimrc` settings to `init.lua` (or keep `init.vim` as a bridge)
- [ ] Add native LSP via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) for go-to-definition, hover docs, rename, inline diagnostics
- [ ] Add autocompletion via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [ ] Add [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting (replaces syntax plugins for JS, Markdown, etc.)
- [ ] Replace **NERDTree** with [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) or [oil.nvim](https://github.com/stevearc/oil.nvim)
- [ ] Replace **vim-airline** with [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [ ] Add [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) for inline git blame/diff in the gutter (complements vim-fugitive)
- [ ] Evaluate dropping **vim-indent-guides** — Neovim has `listchars` and treesitter indent, or use [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
