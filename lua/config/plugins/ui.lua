return {
  -- Icons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

-- Colour scheme
{
    "folke/tokyonight.nvim",
    lazy     = false,
    priority = 1000,
    config   = function()
      require("tokyonight").setup({
        style       = "moon",   -- "storm" | "moon" | "night" | "day"
        transparent = false,
        styles = {
          comments     = { italic = true },
          keywords     = { italic = true, bold = true },
          functions    = { italic = true },
          variables    = {},
          -- Background style for these UI elements
          sidebars     = "dark",
          floats       = "dark",
        },
      })
      vim.cmd("colorscheme tokyonight")
    end,
},

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme                = "tokyonight",
          icons_enabled        = true,
          component_separators = { left = "", right = "" },
          section_separators   = { left = "", right = "" },
        },
      })
    end,
  },


  -- Indent guide lines
  {
    "lukas-reineke/indent-blankline.nvim",
    main   = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          enabled    = true,
          show_start = false,
          show_end   = false,
        },
      })
    end,
  },
}
