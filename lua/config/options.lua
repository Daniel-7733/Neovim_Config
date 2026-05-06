-- Leader key (must be set before plugins load)
vim.g.mapleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Line numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- Mouse & clipboard
vim.opt.mouse     = "a"
vim.opt.clipboard = "unnamedplus"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase  = true
vim.opt.hlsearch   = false
vim.opt.incsearch  = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn    = "yes"
vim.opt.cursorline    = true
vim.opt.scrolloff     = 8

-- Performance
vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Persistence
vim.opt.undofile = true

-- Indentation
vim.opt.tabstop     = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.smartindent = true
