return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {},
    dashboard = {
      enabled = true,
      sections = {
        {
          {
            section = "terminal",
            -- cmd = "chafa ~/.config/nvim/misc/pic.jpeg --format symbols --symbols vhalf --size 60x18 --stretch; sleep .1",
            cmd = "cat ~/.config/nvim/misc/pic.txt; sleep .1",
            height = 17,
            padding = 1,
          },

          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
    bigfile = { enabled = true },
    input = { enabled = true },
    indent = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
  },
  keys = {
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
    { "<leader>bd", function(n) Snacks.bufdelete(n) end, desc = "Remove current buffer" }
  },
}
