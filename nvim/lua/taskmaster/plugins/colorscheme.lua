function colorfun()
	   vim.cmd[[colorscheme tokyonight-night]]
 	   vim.api.nvim_set_hl(0,"Normal",{bg = "none"})	  	   vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
	   
end


return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 100,
  config = function()
	   require("tokyonight")
	   colorfun()
 end		
} 
