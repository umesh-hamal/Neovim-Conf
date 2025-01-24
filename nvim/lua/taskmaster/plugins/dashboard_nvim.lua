return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('dashboard').setup {
      theme = 'doom',  -- or 'hyper'
      config = {
        header = {
          '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
          '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
          '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
          '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
          '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
          '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
          '                                                  ',
        },
        center = {
          { icon = '  ',desc = 'New File', group = '@property', action = 'enew', key = 'N' },
	  { icon = '  ', desc = 'Find File           ', action = 'Telescope find_files', key = 'F' },
          { icon = '  ', desc = 'Recent Files        ', action = 'Telescope oldfiles', key = 'R' },
          { icon = '  ', desc = 'Search Text         ', action = 'Telescope live_grep', key = 'S' },
          { icon = '  ', desc = 'Configuration       ', action = 'e ~/.config/nvim/init.lua', key = 'C' },
	  

},
        footer = { ' Welcome MR. TASKMASTER!' },
      },
    }
  end,
}
