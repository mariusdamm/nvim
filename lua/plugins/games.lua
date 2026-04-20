return {
	{
		"alanfortlink/blackjack.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("blackjack").setup({
				card_style = "large", -- Can be "mini" or "large".
				suit_style = "black", -- Can be "black" or "white".
				scores_path = "/local/misc/scores.json", -- Default location to store the scores.json file.
				keybindings = {
					["next"] = "j",
					["finish"] = "k",
					["quit"] = "q",
				},
			})
		end,
	},
}
