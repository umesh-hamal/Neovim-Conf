return{
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "slide", -- Animation style: fade, slide, static
      timeout = 3000,  -- Notification disappears after 3 seconds
      background_colour = "#000000",
    })

    -- Set nvim-notify as the default notification handler
    vim.notify = require("notify")
  end
}

