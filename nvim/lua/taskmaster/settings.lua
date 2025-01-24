-- Set the leader keys 
vim.g.mapleader = " " -- Space as the leader key
vim.g.maplocalleader = " " -- Space as the local leader key

-- General options
vim.opt.backspace = "2" -- Allow backspacing over everything in insert mode
vim.opt.showcmd = true -- Show (partial) command in the status line
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.autowrite = true -- Automatically save before certain commands
vim.opt.cursorline = true -- Highlight the screen line of the cursor
vim.opt.autoread = true -- Automatically read files changed outside of Neovim
vim.opt.nu = true

-- Use spaces for tabs
vim.opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2 -- Number of spaces used for each step of (auto)indent
vim.opt.shiftround = true -- Round indent to the nearest multiple of 'shiftwidth'
vim.opt.expandtab = true -- Convert tabs to spaces

-- Key mappings
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') -- Clear search highlights

