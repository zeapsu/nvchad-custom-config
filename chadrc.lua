local M = {}

M.ui = {
  theme_toggle = { "tokyonight", "tokyodark" },
  theme = "tokyonight",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"
M.neovide = require "custom.neovide"

return M
