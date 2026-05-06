return {
  { "tpope/vim-fugitive" },

  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_WindowLayout       = 2
    end,
  },
}
