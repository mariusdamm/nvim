return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"gofumpt",
				"goimports",
				"prettier",
				"isort",
				"black",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofumpt", "goimports" },
				python = { "isort", "black" },
				markdown = { "prettier" },
			},
			-- Optional: Automatisch beim Speichern formatieren
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
		config = function()
			vim.keymap.set({ "n", "v" }, "<leader>cf", function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format code" })
		end,
	},
}
