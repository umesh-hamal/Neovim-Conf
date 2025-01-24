return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
    },
    {
      'nvim-telescope/telescope-file-browser.nvim',
      dependencies = { 'nvim-telescope/telescope.nvim' },
    },
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup {
      extensions = {
        file_browser = {
          hijack_netrw = true, -- Disable netrw
          theme = "ivy",       -- Optional: Customize the UI theme
        },
      },
    }
    telescope.load_extension('file_browser') -- Load the file browser extension
  end,
}

