return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
      })
      -- vim.cmd.colorscheme "tokyonight-night"
    end

  },
  { 
    "ntk148v/habamax.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.cmd.colorscheme "habamax"
    end,
  },
}
