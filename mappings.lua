local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<C-q>"] = { ":q <CR>", "quit", opts = { noremap  = false } },
    ["<leader>kk"] = { ":RustHoverActions <CR>", "rust hover actions", opts = { noremap = true } },
    ["<leader>ka"] = { ":RustCodeAction <CR>", "rust code action", opts = { noremap = true } },
  },
  i = {
    ["jk"] = { "<ESC>", "insert to normal", opts = { nowait = true } },
    },

}

M.toggleterm = {
    n = {
        ["<C-\\>"] = { ":ToggleTerm direction=float <CR>", "toggleterm" }
    },
}
-- more keybinds!
M.copilot = {
    i = {
        ["<C-a>"] = { "<cmd> copilot#Accept() <CR>", opts = { silent=true, expr=true, script = true } }
    },
}


return M
