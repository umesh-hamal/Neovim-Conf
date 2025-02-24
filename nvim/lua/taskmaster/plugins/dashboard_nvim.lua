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
          { icon = '  ', desc = 'Configuration       ', action = 'Telescope find_files cwd=~/.config/nvim', key = 'C' },
          { icon = '⚓ ', desc = 'Lazy Package Manager', action = ':Lazy', key = 'L' },
          { icon = '󰿅  ', desc = 'Quit                 ', action = ':q!', key = 'Q' },

        },
        footer = { ' WELCOME MR. TASKMASTER!' },
      },
    }
  end,
}



