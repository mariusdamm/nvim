return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {}, -- Default Settings reichen meist
  config = function(_, opts)
    local npairs = require("nvim-autopairs")
    npairs.setup(opts)
  end,
}
