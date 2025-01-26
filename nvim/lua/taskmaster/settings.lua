-- General options
vim.opt.backspace = "2" -- Allow backspacing over everything in insert mode
vim.opt.showcmd = true -- Show (partial) command in the status line
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.autowrite = true -- Automatically save before certain commands
vim.opt.cursorline = true -- Highlight the screen line of the cursor
vim.opt.autoread = true -- Automatically read files changed outside of Neovim
vim.opt.number = true --Add line numbers
vim.opt.relativenumber = false --Add relative Number
vim.opt.clipboard = "unnamedplus" --By this you can use system clipboard, for all yank (y), delete (d), change (c), and put (p) operations

-- Fix tabs,spaces 
vim.opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2 -- Number of spaces used for each step of (auto)indent
vim.opt.shiftround = true -- Round indent to the nearest multiple of 'shiftwidth'
vim.opt.expandtab = true -- Convert tabs to spaces


