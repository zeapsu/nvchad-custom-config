local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {

        lint.eslint,
        null_ls.builtins.completion.spell,

        -- Lua
        formatting.stylua,

        -- webdev stuff
        formatting.deno_fmt,
        formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

        -- Shell
        formatting.shfmt,
        lint.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

        -- cpp
        -- canceling for now since we are running ccls for LSP 
        -- b.formatting.clang_format,
        formatting.rustfmt,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
