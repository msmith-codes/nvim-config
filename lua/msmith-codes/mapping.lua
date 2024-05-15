local keyset = vim.keymap.set

-- Leader define:
vim.g.mapleader = " "

-- Remapping:
-- keyset("n", "<leader>q", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', '<C-w>w', { noremap = true, silent = true })

-- Line Numbers:
vim.wo.number = true
vim.wo.relativenumber = false
vim.o.numberwidth = 4
vim.wo.cursorline = true
vim.wo.wrap = false
vim.cmd("highlight LineNumber guifg=#999999")

-- Tab Settings:
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.list = false
vim.o.listchars = "tab:→ "


