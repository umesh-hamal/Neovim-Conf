vim.g.mapleader = " "
--Space--
vim.keymap.set("n","<leader>w", ":w<CR>")
vim.keymap.set("n","<leader>q", ":q!<CR>")
vim.keymap.set("n","<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n","<leader>b", ":Telescope file_browser<CR>")
vim.keymap.set("n","<leader>e", ":Neotree<CR>")
vim.keymap.set("n","<leader>t", ":vsplit | :terminal<CR>")
--Ctrl--
vim.keymap.set("n","<C-n>", ":split<CR>")
vim.keymap.set("n","<C-s>", ":vsplit<CR>")
