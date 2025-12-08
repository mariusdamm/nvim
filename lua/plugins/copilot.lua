return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = true },
				panel = { enabled = true },
				filetypes = {
					go = true,
					["*"] = true, -- alles erlauben, ausser md
					markdown = false,
				},
			})
		end,
	},
	{
		"giuxtaposition/blink-cmp-copilot",
	},
}

