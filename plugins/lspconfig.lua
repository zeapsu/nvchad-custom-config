-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "lua_ls", "pyright"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.arduino_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
    -- Required
    "arduino-language-server",
    "-cli-config",
    "~/Library/Arduino15/arduino-cli.yaml",
    "-cli",
    "/opt/homebrew/bin/arduino-cli",
    "-ccls",
    "/opt/homebrew/bin/ccls",

    "-fqbn",
    "arduino:avr:uno",
    },

    filetypes = { "arduino", "ino" },
}

lspconfig["ccls"].setup({
  capabilities = capabilities,
  cmd = { "ccls" },
  filetypes = { "cpp", "c" },
  root_dir = require("lspconfig/util").root_pattern("compile_commands.json", ".ccls", ".git"),
})

