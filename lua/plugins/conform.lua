return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua", -- lua
				"gofumpt", -- go
				"goimports", -- go
				"prettier", -- markdown
				"isort", -- python
				"black", -- python
				"mbake", -- makefile
			},
		},
	},
	{
		"stevearc/conform.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			formatters = {
				mbake = {
					command = "mbake",
					-- HIER IST DIE 1. KORREKTUR:
					-- Sag 'mbake', dass es den 'format'-Befehl nutzen soll.
					-- conform leitet den Dateiinhalt automatisch an stdin weiter.
					args = { "format", "--stdin" },
				},
			},

			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofumpt", "goimports" },
				python = { "isort", "black" },
				markdown = { "prettier" },
				make = { "mbake" },
			},

			-- HIER IST DIE 2. KORREKTUR: Mehr Zeit geben
			format_on_save = {
				timeout_ms = 1000, -- 1 Sekunde für Speichern
				lsp_fallback = true,
			},
		},
		config = function(_, opts)
			require("conform").setup(opts)

			vim.keymap.set({ "n", "v" }, "<leader>cf", function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					-- HIER IST DIE 3. KORREKTUR: Mehr Zeit für manuellen Start
					timeout_ms = 2000, -- 2 Sekunden für manuelles Formatieren
				})
			end, { desc = "Format code" })
		end,
	},
}
