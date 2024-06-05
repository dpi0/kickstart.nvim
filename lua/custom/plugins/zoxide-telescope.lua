return {
  'jvgrootveld/telescope-zoxide',
  config = function()
    local z_utils = require 'telescope._extensions.zoxide.utils'

    require('telescope').setup {
      -- (other Telescope configuration...)
      extensions = {
        zoxide = {
          -- prompt_title = '[ Walking on the shoulders of TJ ]',
          mappings = {
            default = {
              after_action = function(selection)
                print('Update to (' .. selection.z_score .. ') ' .. selection.path)
              end,
            },
            -- Opens the selected entry in a new split
            ['<C-g>'] = { action = z_utils.create_basic_command 'split' },
            ['<C-f>'] = {
              keepinsert = true,
              action = function(selection)
                builtin.find_files { cwd = selection.path }
              end,
            },
          },
        },
      },
    }
  end,
}
