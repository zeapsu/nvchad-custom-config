local M = {}

M.ui = {
    theme_toggle = { "tokyonight", "tokyodark" },
    theme = "tokyonight",
    statusline = {
        theme = "minimal", -- default/vscode/vscode_colored/minimal

        -- default/round/block/arrow (separators work only for "default" statusline theme;
        -- round and block will work for the minimal theme only)
        separator_style = "round",

        -- modules arg here is the default table of modules
        overriden_modules = function(modules)
        --     modules[2] = (function()
        --         return " 💀 "
        --     end)()

        -- define the somefunction anywhwere in your custom dir, just call it well!
        -- modules[2] = somefunction()  

        -- adding a module between 2 modules
        -- Use the table.insert functin to insert at specific index
        -- This will insert a new module at index 2 and previous index 2 will become 3 now

            table.insert(
                modules,
                1,
                (function()
                    return " 💀  "
                end)()
            )
        end,
    },
    tabufline = {
        -- overriden_modules = function(modules)
        --     modules[1] = (function()
        --         return "  ツ  "
        --     end)()
        --
        --     -- table.insert(
        --     --     modules,
        --     --     5,
        --     --     (function()
        --     --         return ""
        --     --     end)()
        --     -- )
        -- -- or table.remove(modules, 4)
        -- end,
    },
    nvdash = {
        load_on_startup = true,
    }
}


M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"
-- M.neovide = require "custom.neovide"

return M
