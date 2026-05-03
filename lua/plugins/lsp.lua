local lsp = {
	"lua_ls", -- lua
	"gopls", -- golang
	"pyright", -- python
	"jdtls", -- java
	-- "texlab", -- latex
	-- "dockerls", -- docker
	"yamlls", -- yaml
	-- "docker_compose_language_service", -- docker compose
	"buf_ls", -- protobuf
}

return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			local mason = require("mason")
			mason.setup()
			vim.keymap.set("n", "<leader>cm", ":Mason<CR>", { desc = "Open mason" })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "b0o/schemastore.nvim" },
		config = function()
			-- local lspconfig = require("lspconfig")
			--
			-- for _, server in ipairs(lsp) do
			--   lspconfig[server].setup({})
			-- end

			vim.lsp.config("yamlls", {
				settings = {
					yaml = {
						schemaStore = {
							-- You must disable built-in schemaStore support if you want to use
							-- this plugin and its advanced options like `ignore`.
							enable = false,
							-- Avoid TypeError: Cannot read properties of undefined (reading 'length')
							url = "",
						},
						schemas = require("schemastore").yaml.schemas(),
					},
				},
			})

			-- globale LSP-Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show details" })
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to reference" })
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.type_definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = lsp,
				-- automatic_installation = false,
			})
		end,
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
			vim.diagnostic.config({ virtual_text = false, virtual_lines = true })
			vim.keymap.set("n", "<Leader>cl", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
		end,
	},
	{
		"b0o/schemastore.nvim",
		lazy = true,
	},
}
