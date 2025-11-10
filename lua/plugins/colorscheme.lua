return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			local tokyonight = require("tokyonight")
			tokyonight.setup({
				style = "night",
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = { bold = true },
				},
			})
			tokyonight.load()
		end,
	},
	{
		"ntk148v/habamax.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- vim.cmd.colorscheme "habamax"
		end,
	},
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				code_style = {
					comments = "italic",
					keywords = "none",
					functions = "bold",
					strings = "none",
					variables = "none",
				},
				style = "darker",
			})
			-- require("onedark").load()
		end,
	},
}
