return {
	"nvim-telescope/telescope.nvim",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
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
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "bottom" },
				sorting_strategy = "descending",
				winblend = 0,
			},
			pickers = {
				find_files = {
					preview = true,
				},
				live_grep = {
					preview = true,
				},
			},
		})
	end,
}
