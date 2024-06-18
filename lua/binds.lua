-- NICE
vim.keymap.set('n', 'U', ':redo<CR>', { noremap = true })
vim.keymap.set('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-BS>', 'db', { noremap = true, silent = true })

vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<S-d>', 'dd')

vim.keymap.set('n', '<C-A-t>', ':set textwidth=80<CR>', { silent = true })

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
vim.keymap.set('n', '<a-s-w>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- RESIZE
vim.keymap.set('n', '<C-a-l>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-a-j>', ':resize +2<CR>')
vim.keymap.set('n', '<C-a-k>', ':resize -2<CR>')
vim.keymap.set('n', '<C-a-h>', ':vertical resize +2<CR>')
-- vim.keymap.set('i', '<C-a-l>', ':vertical resize -2<CR>')
-- vim.keymap.set('i', '<C-a-j>', ':resize +2<CR>')
-- vim.keymap.set('i', '<C-a-k>', ':resize -1<CR>')
-- vim.keymap.set('i', '<C-a-h>', ':vertical resize +2<CR>')kk

-- COMMENT
-- vim.keymap.set('n', '<A-c>', api.call('comment.linewise.current', 'g@$'), { expr = true, desc = 'Comment current line' })

-- FILE
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { silent = true })
vim.keymap.set('n', '<C-q>', ':wqa<CR>', { silent = true })
vim.keymap.set('n', '<A-q>', ':q<CR>', { silent = true })
vim.keymap.set('n', '<A-q>', ':q!<CR>', { silent = true })
vim.keymap.set('n', '<C-a>', 'ggVG')

-- PLUGINS
vim.keymap.set('n', '<A-t>', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<C-A-a>', ':Alpha<CR>', { silent = true })

-- ZOXIDE
vim.keymap.set('n', '<A-d>', ':Telescope zoxide list<CR>', { silent = true })

-- TELESCOPE FILE BROWSER
vim.keymap.set('n', '<A-S-d>', ':Telescope file_browser<CR>')
-- open file_browser with the path of the current buffer
vim.keymap.set('n', '<space>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>')

-- BUFFERS/TAB
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', { silent = true })
-- vim.keymap.set('n', '<C-S-t>', '<Cmd>BufferRestore<CR>', { silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<C-1>', ':BufferGoto 1<CR>', { silent = true })
vim.keymap.set('n', '<C-2>', ':BufferGoto 2<CR>', { silent = true })
vim.keymap.set('n', '<C-3>', ':BufferGoto 3<CR>', { silent = true })
vim.keymap.set('n', '<C-4>', ':BufferGoto 4<CR>', { silent = true })
vim.keymap.set('n', '<C-5>', ':BufferGoto 5<CR>', { silent = true })
vim.keymap.set('n', '<C-6>', ':BufferGoto 6<CR>', { silent = true })
vim.keymap.set('n', '<C-7>', ':BufferGoto 7<CR>', { silent = true })
vim.keymap.set('n', '<C-8>', ':BufferGoto 8<CR>', { silent = true })
vim.keymap.set('n', '<C-9>', ':BufferGoto 9<CR>', { silent = true })
vim.keymap.set('n', '<C-0>', ':BufferLast<CR>', { silent = true })
-- vim.keymap.set('n', 'a<.set(C-S-p>', ':BufferPin<CR>', { silent = true })
-- vim.keymap.set('n', 'a<.set(C-S-A-t>', ':BufferRestore<CR>', { silent = true })

-- SPLITS
vim.keymap.set('n', '<C-S-l>', ':vsp<CR>', { silent = true })
vim.keymap.set('n', '<C-S-j>', ':sp<CR>', { silent = true })

-- TERMINAL
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-S-i>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
vim.keymap.set('n', '<C-S-t>', ':vsp<CR>:terminal<CR>', { silent = true })

-- LINES UP/DOWN
-- Move lines up
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move lines down
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- UNDOTREE
vim.keymap.set('n', '<A-u>', vim.cmd.UndotreeToggle)
-- HARPOON
-- vim.keymap.set('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
-- vim.keymap.set('n', '<leader>hm', ':lua require("harpoon.mark").add_file()<CR>')

-- MARKDOWN PREVIEW
vim.keymap.set('n', '<A-p>', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })

-- SESSION SAVE/PERSISTENCE
-- restore the session for the current directory
vim.api.nvim_set_keymap('n', '<leader>qd', [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap('n', '<A-r>', [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap('n', '<leader>qk', [[<cmd>lua require("persistence").stop()<cr>]], {})

-- NVIM SPECTRE
vim.keymap.set('n', '<A-C-f>', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = 'Toggle Spectre',
})

-- MARKDOWN BOLD AND ITALIC
vim.keymap.set('i', '<C-b>', '****<Left><Left>')
vim.keymap.set('i', '<C-y>', '**<Left>')

-- Function to surround word under cursor with a given prefix and suffix
local function surround_word(prefix, suffix)
  -- Save the current cursor position
  local pos = vim.api.nvim_win_get_cursor(0)
  -- Get the word under the cursor
  local word = vim.fn.expand '<cword>'
  -- Replace the word with the formatted word
  vim.cmd('normal! ciw' .. prefix .. word .. suffix)
  -- Restore the cursor position
  vim.api.nvim_win_set_cursor(0, pos)
end

-- Function to surround visually selected text with a given prefix and suffix
function _G.surround_visual(prefix, suffix)
  -- Get the start and end positions of the visual selection
  local start_pos = vim.fn.getpos "'<"
  local end_pos = vim.fn.getpos "'>"

  -- Ensure start_pos is before end_pos
  if start_pos[2] > end_pos[2] or (start_pos[2] == end_pos[2] and start_pos[3] > end_pos[3]) then
    start_pos, end_pos = end_pos, start_pos
  end

  -- Get the text in the visual selection
  local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)

  -- If only one line is selected, surround the selected text
  if #lines == 1 then
    lines[1] = lines[1]:sub(1, start_pos[3] - 1) .. prefix .. lines[1]:sub(start_pos[3], end_pos[3]) .. suffix .. lines[1]:sub(end_pos[3] + 1)
  else
    -- If multiple lines are selected, surround each line with prefix and suffix
    lines[1] = lines[1]:sub(1, start_pos[3] - 1) .. prefix .. lines[1]:sub(start_pos[3])
    lines[#lines] = lines[#lines] .. suffix .. lines[#lines]:sub(end_pos[3] + 1)
    for i = 2, #lines - 1 do
      lines[i] = prefix .. lines[i] .. suffix
    end
  end

  -- Set the modified lines back
  vim.api.nvim_buf_set_lines(0, start_pos[2] - 1, end_pos[2], false, lines)

  -- Reselect the visual area to restore the selection
  vim.cmd 'normal! gv'
end

-- Example of mapping to surround visually selected text with quotes using Alt-w
vim.api.nvim_set_keymap('v', '<A-w>', [[:lua surround_visual('"', '"')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-S-b>', [[:lua surround_visual('(', ')')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-C-b>', [[:lua surround_visual('**', '**')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-C-[>', [[:lua surround_visual('[', ']')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-C-S-{>', [[:lua surround_visual('{', '}')<CR>]], { noremap = true, silent = true })

-- Mapping for bold
vim.keymap.set('n', '<C-b>', function()
  surround_word('**', '**')
end, { noremap = true, silent = true })

-- mapping for highlighting
vim.keymap.set('n', '<A-S-h>', function()
  surround_word('{==', '==}')
end, { noremap = true, silent = true })

-- mapping for underline highlighting
vim.keymap.set('n', '<A-S-u>', function()
  surround_word('{++', '++}')
end, { noremap = true, silent = true })

-- mapping for delete highlighting
vim.keymap.set('n', '<A-S-d>', function()
  surround_word('{--', '--}')
end, { noremap = true, silent = true })

-- mapping for comments
vim.keymap.set('n', '<A-S-c>', function()
  surround_word('{>>', '<<}')
end, { noremap = true, silent = true })

-- Mapping for italics
vim.keymap.set('n', '<C-y>', function()
  surround_word('*', '*')
end, { noremap = true, silent = true })

-- Mapping for surrounding with ()
vim.keymap.set('n', '<A-b>', function()
  surround_word('(', ')')
end, { noremap = true, silent = true })

-- Mapping for surrounding with []
vim.keymap.set('n', '<A-[>', function()
  surround_word('[', ']')
end, { noremap = true, silent = true })

-- Mapping for surrounding with {}
vim.keymap.set('n', '<A-{>', function()
  surround_word('{', '}')
end, { noremap = true, silent = true })

-- WRITE FILENAME
vim.keymap.set({ 'n', 'i' }, '<C-e>', function()
  -- Get the current directory
  local current_dir = vim.fn.getcwd()
  -- Prompt the user to enter the filename with the absolute path, defaulting to the current directory
  local filename = vim.fn.input('Save as: ', current_dir .. '/', 'file')
  -- Save the current buffer with the specified filename
  if filename ~= '' then
    vim.cmd('write ' .. filename)
    -- Optionally set the buffer name to the new filename
    vim.api.nvim_buf_set_name(0, filename)
  else
    print 'Save aborted: no filename provided.'
  end
end, { noremap = true, silent = true })

-- Function to duplicate the current line below
local function duplicate_line_below()
  local line = vim.api.nvim_get_current_line()
  local lnum = vim.api.nvim_win_get_cursor(0)[1]
  vim.api.nvim_buf_set_lines(0, lnum, lnum, false, { line })
end

-- -- Function to duplicate the current line above
-- local function duplicate_line_above()
--   local line = vim.api.nvim_get_current_line()
--   local lnum = vim.api.nvim_win_get_cursor(0)[1] - 1
--   vim.api.nvim_buf_set_lines(0, lnum, lnum, false, { line })
-- end

-- Keybinding for Ctrl+Alt+Down to duplicate the current line below
vim.keymap.set('n', '<S-f>', duplicate_line_below, { noremap = true, silent = true })

-- Keybinding for Ctrl+Alt+Up to duplicate the current line above
-- vim.keymap.set('n', '<C-A-Up>', duplicate_line_above, { noremap = true, silent = true })

-- Keybinding for indenting a visual block using Tab
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Keybinding for back-indenting a visual block using Shift+Tab
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

-- vim visual multi binds
vim.g.VM_maps = {
  ['Find Under'] = '<C-n>',
  ['Select All'] = '<C-m>',
  ['Add Cursor Down'] = '<A-s-j>',
  ['Add Cursor Up'] = '<A-s-k>',
  ['Add Cursor At Pos'] = '<C-S-LeftMouse>',
  -- ['Visual Add'] = 'gb', -- Visual Mode
  ['Start Regex Search'] = 'g/', -- Visual Mode
}

-- Function to select the word under cursor
local function select_word()
  -- Move to the start of the word
  vim.cmd 'normal! viw'
end

-- Function to select the word under cursor
local function copy_word()
  -- Move to the start of the word
  vim.cmd 'normal! yiw'
end

-- Mapping for selecting the current word
vim.keymap.set('n', '<A-v>', select_word, { noremap = true, silent = true })

-- Mapping for copying the current word
vim.keymap.set('n', '<A-y>', copy_word, { noremap = true, silent = true })
