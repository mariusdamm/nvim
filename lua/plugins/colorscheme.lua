return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- vim.cmd.colorscheme("tokyonight-night")
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
			-- Enable theme
			require("onedark").load()
		end,
	},
}
