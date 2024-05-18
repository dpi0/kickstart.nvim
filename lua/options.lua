vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

--- EDITOR
-- vim.cmd 'set textwidth=80'
vim.cmd 'set colorcolumn=+1'

--- NEOVIDE
vim.o.guifont = 'JetBrainsMono Nerd Font:h14'
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.1
vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_refresh_rate = 120
vim.g.neovide_no_idle = true
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = false
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
-- vim.g.neovide_transparency = 0.5

-- vim.api.nvim_set_hl(0, 'NoicePopupBorder', { fg = '#FFFFFF' }) -- white border color
-- vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorder', { fg = '#FFFFFF', bg = 'NONE' })

-- VIMTEX
-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note that most plugin managers will do this automatically.
vim.cmd 'filetype plugin indent on'

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work (see ":help vimtex-requirements" for more
-- info).
vim.cmd 'syntax enable'

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'zathura'
