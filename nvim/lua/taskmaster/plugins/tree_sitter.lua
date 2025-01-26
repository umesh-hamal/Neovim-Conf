return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Specify the parsers to install
        ensure_installed = {
          "c", "lua", "vim", "vimdoc", "query",
          "markdown", "markdown_inline", "kotlin"
        },

        sync_install = false, -- Parsers are installed asynchronously
        auto_install = true, -- Automatically install missing parsers
        ignore_install = { "javascript" }, -- Skip specific parsers

        highlight = {
          enable = true, -- Enable treesitter-based highlighting
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true -- Disable for large files
            end
          end,
          additional_vim_regex_highlighting = false, -- No additional Vim regex highlighting
        },

        -- Enable incremental selection
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn", -- Start selection
            node_incremental = "grn", -- Increment selection
            scope_incremental = "grc", -- Increment to scope
            node_decremental = "grm", -- Decrement selection
          },
        },

        -- Enable treesitter-based indentation
        indent = {
          enable = true,
        },

        -- Enable contextual commenting
        context_commentstring = {
          enable = true,
          enable_autocmd = false, -- Disable automatic updating for performance
        },
      })
    end,
  },
}


