local map  = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ── File / session ────────────────────────────────────────────────────────
map("n", "<leader>w", "<cmd>w<cr>",          opts)
map("n", "<leader>q", "<cmd>q<cr>",          opts)
map("n", "<leader>x", "<cmd>wq<cr>",         opts)
map("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)

-- ── Splits ────────────────────────────────────────────────────────────────
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- ── Telescope ─────────────────────────────────────────────────────────────
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",  opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>",    opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",  opts)

-- ── Buffers ───────────────────────────────────────────────────────────────
map("n", "<S-l>",      "<cmd>bnext<cr>",   opts)
map("n", "<S-h>",      "<cmd>bprev<cr>",   opts)
map("n", "<leader>bd", "<cmd>bdelete!<cr>", opts)

-- ── Undotree ──────────────────────────────────────────────────────────────
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", opts)

-- ── Fugitive ──────────────────────────────────────────────────────────────
map("n", "<leader>gs", "<cmd>Git<cr>",       opts)  -- git status panel
map("n", "<leader>gp", "<cmd>Git push<cr>",  opts)  -- push
map("n", "<leader>gl", "<cmd>Git pull<cr>",  opts)  -- pull
map("n", "<leader>gb", "<cmd>Git blame<cr>", opts)  -- blame

-- ── Diagnostics ───────────────────────────────────────────────────────────
map("n", "<leader>d", vim.diagnostic.open_float, opts)
map("n", "[d",        vim.diagnostic.goto_prev,  opts)
map("n", "]d",        vim.diagnostic.goto_next,  opts)

-- ── LSP ───────────────────────────────────────────────────────────────────
map("n", "gd", function()
  vim.cmd("vsplit")
  vim.lsp.buf.definition()
end, opts)
map("n", "gr",         vim.lsp.buf.references,  opts)
map("n", "K",          vim.lsp.buf.hover,        opts)
map("n", "<leader>rn", vim.lsp.buf.rename,       opts)
map("n", "<leader>ca", vim.lsp.buf.code_action,  opts)
map("n", "<leader>lf",  function()
  vim.lsp.buf.format({ async = true })
end, opts)
