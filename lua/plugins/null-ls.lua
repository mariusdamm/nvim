return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local nls = require("null-ls")
		nls.setup({
			sources = {
				nls.builtins.formatting.stylua,
				nls.builtins.formatting.gofumpt,
				nls.builtins.formatting.goimports,
				nls.builtins.formatting.prettier,
				nls.builtins.formatting.isort,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format file" })

		require("mason-null-ls").setup({
			ensure_installed = {
				"stylua",
				"gofumpt",
				"goimports",
				"prettier",
				"isort",
			},
			automatic_installation = true,
		})
	end,
}
