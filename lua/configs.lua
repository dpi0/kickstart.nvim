-- AUTO SAVE ON FOCUS LOST
vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost' }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand '%' ~= '' and vim.bo.buftype == '' then
      vim.api.nvim_command 'silent update'
      -- vim.api.nvim_command 'stopinsert'
    end
  end,
})

-- AUTO ADD DASH AND NUMBERED LISTS IN MARKDOWN FILES
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.keymap.set('i', '<CR>', function()
      -- Get the current line content
      local line = vim.api.nvim_get_current_line()
      -- Check if the line starts with a dash followed by a space
      if string.match(line, '^%s*%- ') then
        return '\r- '
        -- Check if the line starts with a number followed by a period and a space
      elseif string.match(line, '^%s*%d+%. ') then
        local num = tonumber(string.match(line, '^%s*(%d+)'))
        return string.format('\r%d. ', num + 1)
      else
        return '\r'
      end
    end, { buffer = true, expr = true })
  end,
})
