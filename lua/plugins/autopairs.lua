return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {}, -- Default Settings reichen meist
  config = function(_, opts)
    local npairs = require("nvim-autopairs")
    npairs.setup(opts)

    -- Integration mit blink.cmp
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local blink_cmp = require("blink.cmp")
    blink_cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
