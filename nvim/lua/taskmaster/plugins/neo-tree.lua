return{

  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
    config = function()
  
    require("neo-tree").setup({
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
     },


      window = {
            position = "right",
            width  =  "50",
        },

        mappings = {
          ["<esc>"] = "close_window",
    },

      filesystem = {
          follow_current_file = true, -- Keep the current file in focus
          hijack_netrw = true, -- Replace netrw with Neo-tree
      },
     })

    end
}

