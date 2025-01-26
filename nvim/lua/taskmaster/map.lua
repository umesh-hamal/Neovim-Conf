--Setting Leader Key
vim.g.mapleader = " "
vim.g.localmapleader = " "

--All Shortcut with Space
vim.keymap.set("n","<leader>w", ":w<CR>")
vim.keymap.set("n","<leader>q", ":q!<CR>")
vim.keymap.set("n","<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n","<leader>b", ":Telescope file_browser<CR>")
vim.keymap.set("n","<leader>e", ":Neotree<CR>")
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') -- Clear search highlights

--Terminal Setting
vim.keymap.set('n', '<leader>t', function()
  vim.cmd.vnew()  -- Open a new vertical split
  vim.cmd.term()  -- Open a terminal in the new split
  vim.cmd.wincmd("J")  -- Move the terminal to the bottom
  vim.api.nvim_win_set_height(0, 14)  -- Set terminal height
  vim.cmd("startinsert")  -- Switch to Insert mode

  -- Poll for terminal readiness before clearing the screen
  local max_attempts = 20  -- Max retries (2 seconds if interval = 100ms)
  local attempt = 0
  local interval = 400  -- Delay between retries in milliseconds

  local function try_clear()
    local term_job_id = vim.b.terminal_job_id
    if term_job_id then
      vim.fn.chansend(term_job_id, "clear\n")
    else
      attempt = attempt + 1
      if attempt < max_attempts then
        vim.defer_fn(try_clear, interval)
      else
        print("Failed to clear screen: Terminal not ready.")
      end
    end
  end

  -- Start the clearing process
  vim.defer_fn(try_clear, interval)
end)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

--Terminal Settings end

--All Shortcut with Ctrl
vim.keymap.set("n","<C-n>", ":split<CR>")
vim.keymap.set("n","<C-s>", ":vsplit<CR>")

vim.api.nvim_create_autocmd('TermOpen',{
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function ()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})




