local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<C-q>"] = { ":q <CR>", "quit", opts = { noremap  = false } },
  },
  i = {
    ["jk"] = { "<ESC>", "insert to normal", opts = { nowait = true } },
    },
}


-- more keybinds!

return M
