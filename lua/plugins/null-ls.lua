return {
	"nvimtools/none-ls.nvim",
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
	end,
}
