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
      { "<leader>t", group = "tabs" },
      { "<leader>w", proxy = "<c-w>", group = "windows" },
      { "<leader>qq", ":qa<CR>", desc = "Quit all", hidden = true},
      { "<leader>tn", ":tabnext<CR>", desc = "Next tab" },
      { "<leader>tp", ":tabprevious<CR>", desc = "Previous tab" },
      { "<leader>tt", ":tabnew<CR>", desc = "New tab" },
      { "<leader>tq", ":tabclose<CR>", desc = "Close tab" },
    })
  end
}
