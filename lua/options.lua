vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

--- EDITOR
-- vim.cmd 'set textwidth=80'
vim.cmd 'set colorcolumn=+1'

--- NEOVIDE
vim.o.guifont = 'JetBrainsMono Nerd Font:h13'
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
if vim.g.neovide then
  vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
end

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

vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.smarttab = true -- Insert tabs on the start of a line according to shiftwidth
