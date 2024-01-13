---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true }},
    ["q"] = { ":q", "insert exit command", opts = { nowait = true }},
    ["w"] = { ":w", "insert write command", opts = { nowait = true }},
  },
  i = {
    ["jk"] = { "<ESC>", "enter normal mode", opts = { noremap = true }},
  },
}

return M
