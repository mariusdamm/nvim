return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		-- VimTeX configuration goes here, e.g.
    vim.g.vimtex_enabled = 1
    vim.g.vimtex_compiler_method = 'latexmk'
		vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_automatic = 0
    vim.g.vimtex_toc_displayed = 0
	end,
}
