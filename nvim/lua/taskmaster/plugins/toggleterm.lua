return{
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],  -- Open terminal with <leader>t
            direction = "float",           -- Floating terminal
            float_opts = {
                border = "rounded"
            }
        })
    end
}

