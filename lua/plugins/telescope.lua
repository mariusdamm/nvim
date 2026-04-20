return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope find file",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope live grep",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope help tags",
		},
		{
			"<leader>fr",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Telescope list recent files",
		},
		{
			"<leader>bf",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>:",
			function()
				require("telescope.builtin").command_history()
			end,
			desc = "Telescope see command history",
		},
		{
			"<leader>k",
			function()
				require("telescope.builtin").keymaps()
			end,
			desc = "Telescope list keymaps",
		},
	},
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = { prompt_position = "bottom" },
			sorting_strategy = "ascending",
			winblend = 0,
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				preview = {
					timeout = 100,
				},
			},
			pickers = {
				live_grep = {
					previewer = true,
				},
				find_files = {
					previewer = true,
				},
			},
		})
		local builtin = require("telescope.builtin")
	end,
}
