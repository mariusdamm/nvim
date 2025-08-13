return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope list recent files' })

    vim.keymap.set('n', '<leader>bf', builtin.buffers, { desc = 'Telescope buffers' })
    -- now in snacks using snacks.bufdelete(n)
    -- vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Remove current buffer' })
    vim.keymap.set('n', 'L', ':bnext<CR>', { desc = 'Go to next buffer' })
    vim.keymap.set('n', 'H', ':bprevious<CR>', { desc = 'Go to previous buffer' })


    vim.keymap.set('n', '<leader>:', builtin.command_history, { desc = 'Telescope see command history' })
    vim.keymap.set('n', '<leader>C', builtin.colorscheme, { desc = 'Telescope list colorschemes' })
    vim.keymap.set('n', '<leader>k', builtin.keymaps, { desc = 'Telescope list keymaps' })
  end
}
