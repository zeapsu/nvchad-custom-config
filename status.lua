-- custom/status.lua must return a table

local st_modules = require "nvchad_ui.statusline.modules"

return {
   mode = function()
      return st_modules.mode() .. " zeap "
   end,
}
