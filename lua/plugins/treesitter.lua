return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")
		ts.setup({})
		ts.install({
			"make",
			"c",
			"cpp",
			"lua",
			"vim",
			"vimdoc",
			"markdown",
			"markdown_inline",
			"go",
			"gomod",
			"gosum",
			"html",
			"css",
			"javascript",
			"php",
			"java",
			"csv",
			"json",
			"sql",
			"python",
			"bash",
			"gitignore",
			"dockerfile",
			"yaml",
			"regex",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
