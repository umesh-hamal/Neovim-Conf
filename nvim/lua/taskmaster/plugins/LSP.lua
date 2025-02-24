return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")

    -- Load LSP key mappings
    require("taskmaster.lsp_keymappings")

    local servers = { "lua_ls", "kotlin_language_server", "clangd" }
    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        on_attach = function(_, bufnr)
          require("taskmaster.lsp_keymappings").setup(bufnr) -- Call your key mappings function
        end,
      })
    end
  end
}

