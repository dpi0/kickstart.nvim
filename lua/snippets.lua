-- Load LuaSnip
local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

-- Define the snippet
ls.snippets = {
  all = {
    s('hello', {
      t 'Hello! ',
      f(function()
        return os.getenv 'USER'
      end),
      t " today's date is ",
      f(function()
        return os.date '%Y-%m-%d'
      end),
    }),
  },
}
