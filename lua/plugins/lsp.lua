local lsp = {
  "lua_ls", -- lua
  "gopls", -- golang
  "ruff", -- python
}

return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      local mason = require("mason")
      mason.setup()
      vim.keymap.set('n', '<leader>cm', ':Mason<CR>', { desc = 'Open mason' })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      for _, server in ipairs(lsp) do
        lspconfig[server].setup({})
      end

      -- globale LSP-Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show details" })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to reference" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
      vim.keymap.set("n", "gd", vim.lsp.buf.type_definition, { desc = "Go to declaration" })
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
    end
  },
}
