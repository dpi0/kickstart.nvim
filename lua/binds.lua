-- NICE
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
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
vim.keymap.set('n', '<C-q> ', ':wqa<CR>', { silent = true })
vim.keymap.set('n', '<A-q>', ':q<CR>', { silent = true })
vim.keymap.set('n', '<C-a>', 'ggVG')

-- PLUGINS
vim.keymap.set('n', '<A-t>', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<C-M-a>', ':Alpha<CR>', { silent = true })

-- BUFFERS/TAB
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', { silent = true })
-- vim.keymap.set('n', '<C-S-t>', '<Cmd>BufferRestore<CR>', { silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<A-1>', ':BufferGoto 1<CR>', { silent = true })
vim.keymap.set('n', '<A-2>', ':BufferGoto 2<CR>', { silent = true })
vim.keymap.set('n', '<A-3>', ':BufferGoto 3<CR>', { silent = true })
vim.keymap.set('n', '<A-4>', ':BufferGoto 4<CR>', { silent = true })
vim.keymap.set('n', '<A-5>', ':BufferGoto 5<CR>', { silent = true })
vim.keymap.set('n', '<A-6>', ':BufferGoto 6<CR>', { silent = true })
vim.keymap.set('n', '<A-7>', ':BufferGoto 7<CR>', { silent = true })
vim.keymap.set('n', '<A-8>', ':BufferGoto 8<CR>', { silent = true })
vim.keymap.set('n', '<A-9>', ':BufferGoto 9<CR>', { silent = true })
vim.keymap.set('n', '<A-0>', ':BufferLast<CR>', { silent = true })
-- vim.keymap.set('n', 'a<.set(C-S-p>', ':BufferPin<CR>', { silent = true })
-- vim.keymap.set('n', 'a<.set(C-S-M-t>', ':BufferRestore<CR>', { silent = true })

-- SPLITS
vim.keymap.set('n', '<C-S-l>', ':vsp<CR>', { silent = true })
vim.keymap.set('n', '<C-S-j>', ':sp<CR>', { silent = true })

-- TERMINAL
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-S-i>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')


-- LINES UP/DOWN
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })

-- UNDOTREE
vim.keymap.set('n', '<A-u>', vim.cmd.UndotreeToggle)

-- HARPOON
vim.keymap.set('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>hm', ':lua require("harpoon.mark").add_file()<CR>')

-- MARKDOWN
vim.keymap.set('n', '<leader>p', ':MarkdownPreview<CR>')

-- SESSION SAVE/PERSISTENCE
-- restore the session for the current directory
vim.api.nvim_set_keymap('n', '<leader>qd', [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap('n', '<A-r>', [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap('n', '<leader>qk', [[<cmd>lua require("persistence").stop()<cr>]], {})
