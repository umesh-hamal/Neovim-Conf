---@diagnostic disable: undefined-global

--SETTING MAP LEADER AS SPACE<leader> KEY
vim.g.mapleader = " "
vim.g.localmapleader = " "

vim.keymap.set("i","jj", "<Esc>")
-- ALL SHORTCUT WITH LEADER
vim.keymap.set("n","<leader>w", ":w<CR>")
vim.keymap.set("n","<leader>q", ":q!<CR>")
vim.keymap.set("n","<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n","<leader>b", ":Telescope file_browser<CR>")
vim.keymap.set("n","<leader>e", ":Neotree toggle<CR>")
vim.keymap.set('n', "<leader>h", ":nohlsearch<CR>",{desc="Clear search highlights"}) 

-- ALL SHORTCUT WITH CTRL
--  Movement within nvim
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })  -- Move left
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true }) -- Move right
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })  -- Move down
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })    -- Move up
vim.keymap.set("i", "<C-b>", "<S-Left>", { noremap = true, silent = true })  -- Move one word left
vim.keymap.set("i", "<C-w>", "<S-Right>", { noremap = true, silent = true }) -- Move one word right


vim.keymap.set("n","<C-s>", ":vsplit<CR>")
vim.keymap.set("n","<C-x>","<cmd>NoiceDismiss<CR>",{desc = "Dismiss Noice notifications", noremap=true, silent = true})


-- ALL SHORTCUT WITH SHIFT

vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { silent = true }) -- Close the Current Buffer



-- ALL SHORTCUT WITH  ALT
--Navigate Through split windows
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })


