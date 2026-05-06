# nvim-config

Personal Neovim configuration. Built on lazy.nvim with LSP, completion,
telescope, and git tooling.

## Requirements

- Neovim 0.10+
- clangd (for C LSP)
- A Nerd Font (for icons)

## Install

```bash
git clone https://github.com/Daniel-7733/Neovim_Config ~/.config/nvim
```

## Dotfiles Setup

After cloning, symlink the clang-format config to your home directory:

```bash
ln -s ~/.config/nvim/dotfiles/clang-format ~/.clang-format
```

This ensures clang-format is available globally for all C projects and stays
in sync with this repo.

## Plugins

| Plugin | Purpose |
|---|---|
| lazy.nvim | Plugin manager |
| nvim-lspconfig + clangd | C LSP, diagnostics, formatting |
| nvim-cmp + LuaSnip | Autocompletion |
| telescope.nvim | Fuzzy finding |
| vim-fugitive | Git integration |
| gitsigns.nvim | Git diff signs |
| undotree | Visual undo history |
| lualine.nvim | Status line |
| nightfox.nvim | Colour scheme (carbonfox) |
| indent-blankline.nvim | Indent guides |
| nvim-autopairs | Auto bracket pairs |
| vim-sleuth | Auto indent detection |

## Key Mappings

Leader key is `Space`.

### File / Session

| Mapping | Action |
|---|---|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>x` | Save and quit |
| `<leader>h` | Clear search highlight |

### Navigation

| Mapping | Action |
|---|---|
| `<C-h>` | Move to left split |
| `<C-l>` | Move to right split |
| `<C-j>` | Move to split below |
| `<C-k>` | Move to split above |
| `<C-d>` | Scroll down (centred) |
| `<C-u>` | Scroll up (centred) |
| `n` | Next search result (centred) |
| `N` | Previous search result (centred) |

### Buffers

| Mapping | Action |
|---|---|
| `<S-l>` | Next buffer |
| `<S-h>` | Previous buffer |
| `<leader>bd` | Delete buffer (force) |

### Telescope

| Mapping | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Browse open buffers |
| `<leader>fh` | Search help tags |

### LSP

| Mapping | Action |
|---|---|
| `gd` | Go to definition (vertical split) |
| `gr` | Go to references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>lf` | Format file (clang-format via LSP) |

### Diagnostics

| Mapping | Action |
|---|---|
| `<leader>d` | Open diagnostic float |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Git

| Mapping | Action |
|---|---|
| `<leader>gs` | Git status panel |
| `<leader>gp` | Git push |
| `<leader>gl` | Git pull |
| `<leader>gb` | Git blame |

### Editing

| Mapping | Action |
|---|---|
| `<leader>u` | Toggle undotree |
| `<leader>pv` | Open file explorer (netrw) |
| `<leader>p` | Paste without overwriting register (visual) |
