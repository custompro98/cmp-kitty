local cmp = require('cmp')

local mod =  require('mod')
local keywords = require('keywords')
local actions = require('actions')

local source = {}
local items = {}

for k, v in pairs(mod) do
  local item = {
    word = k,
    label = k,
    kind = cmp.lsp.CompletionItemKind.Operator,
    detail = v["detail"],
    insertText = k,
    filterText = k,
  }

  table.insert(items, item)
end

for k, v in pairs(keywords) do
  local item = {
    word = k,
    label = k,
    kind = cmp.lsp.CompletionItemKind.Keyword,
    detail = v["detail"],
    insertText = k,
    filterText = k,
  }

  table.insert(items, item)
end

for k, v in pairs(actions) do
  local item = {
    word = k,
    label = k,
    kind = cmp.lsp.CompletionItemKind.Function,
    detail = v["detail"],
    insertText = k,
    filterText = k,
  }

  table.insert(items, item)
end

source.new = function()
  return setmetatable({}, { __index = source })
end

source.get_trigger_characters = function()
  return { '.' }
end

source.get_keyword_pattern = function()
  return [[\w\+]]
end

source.is_available = function()
  return vim.bo.filetype == 'kitty'
end

source.complete = function(self, request, callback)
  if not vim.regex(self.get_keyword_pattern() .. "$"):match_str(request.context.cursor_before_line) then
    return callback()
  end

  if not self.items then
    self.items = items
  end

  callback(self.items)
end

return source
