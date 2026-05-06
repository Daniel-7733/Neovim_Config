return {
  { "tpope/vim-sleuth" },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    "windwp/nvim-autopairs",
    event  = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = false,
      })

      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp           = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
}
