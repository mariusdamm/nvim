return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    'echasnovski/mini.nvim',
  },
  opts = {
    preset = "helix",
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    -- {
    --   "<leader>?",
    --   function()
    --     require("which-key").show({ global = false })
    --   end,
    --   desc = "Buffer Local Keymaps (which-key)",
    -- },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>b", group = "buffer" },
      { "<leader>g", group = "git" },
      { "<leader>s", group = "search" },
      { "<leader>f", group = "file" },
      { "<leader>c", group = "code" },
      { "<leader>w", proxy = "<c-w>", group = "windows" },
    })
  end
}
