return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {},
    dashboard = {
      enabled = true,
      -- sections = {
      --   {
      --     section = "terminal",
      --     cmd = "chafa ~/.config/nvim/misc/pic.jpeg --format symbols --symbols vhalf --size 60x18 --stretch; sleep .1",
      --     height = 17,
      --     padding = 1,
      --   },
      --   {
      --     pane = 2,
      --     { section = "keys", gap = 1, padding = 1 },
      --     { section = "startup" },
      --   },
      -- },
    },
    bigfile = { enabled = true },
    input = { enabled = true },
    indent = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },

  },
}
