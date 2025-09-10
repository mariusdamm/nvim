vim.cmd("set rnu")
vim.cmd("set mouse=a")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"
-- vim.keymap.set("n", "<leader>qq", ":wqa<CR>", { desc = "Write-Quit everything" })

vim.api.nvim_create_autocmd("BufWinLeave", {
  callback = function(ev)
    if vim.bo[ev.buf].buftype == "nofile" then
      vim.schedule(function()
        if vim.api.nvim_buf_is_valid(ev.buf) then
          vim.api.nvim_buf_delete(ev.buf, { force = true })
        end
      end)
    end
  end,
})
