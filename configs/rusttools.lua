local rt = require("rust-tools")

rt.setup() {
    server = {
        on_attach = function (_, bufnr)
        -- hover actions
        vim.keymap.set("n", "<C-space>", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", require('rust-tools').code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
}
