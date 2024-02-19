vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.api.nvim_set_keymap('',  '<C-t>', ':tabnew<CR>',          { noremap = true, silent = true})
vim.api.nvim_set_keymap('',  '<M-]>', '<CMD>tabnext<CR>',     { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<M-]>', '<CMD>tabnext<CR>',     { noremap = true, silent = true})
vim.api.nvim_set_keymap('',  '<M-[>', '<CMD>tabprevious<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<M-[>', '<CMD>tabprevious<CR>', { noremap = true, silent = true})
