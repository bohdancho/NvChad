---@type ChadrcConfig
local M = {}

M.ui = { theme = "github_dark", tabufline = { enabled = false } }
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
