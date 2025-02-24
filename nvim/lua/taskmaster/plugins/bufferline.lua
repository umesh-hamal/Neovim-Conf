return{
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",  -- For icons
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none", -- Show buffer numbers, by default:ordinal
        separator_style = "thin",  -- Appearance of separators
        diagnostics = "nvim_lsp",  -- Show LSP diagnostics on tabs
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          }
        },
        show_close_icon = true,
        show_buffer_icons = true, -- Disable to remove filetype icons
        show_buffer_close_icons = true,
        always_show_bufferline = true,
        },

    })
  end
}

