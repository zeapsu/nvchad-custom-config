-- custom/plugins/init.lua
-- we're basically returning a table!
return {

      -- Install plugin
      ["Pocco81/TrueZen.nvim"] = {},

      -- Override plugin definition options
      ["goolord/alpha-nvim"] = {
            disable = false,
            cmd = "Alpha",
      },
      
      ["folke/which-key.nvim"] = {
        disable = false,
        cmd = "WhichKey",
      },

      -- Override plugin config
      ["williamboman/mason.nvim"] = {
        override_options = {
              ensure_installed = { "html-lsp", "clangd" }
          }
      },

      ["NvChad/ui"] = {
        override_options = {
          statusline = {
            separator_style = "default",
            overriden_modules = function()
              return require "custom.status"
            end,
          },
          tabufline = {
            lazyload = false, -- to show tabufline by default
            overriden_modules = function ()
              return require "custom.tabufline"
            end,
          },
        },
      },

    -- We are just modifying lspconfig's packer definition table
    -- Put this in your custom plugins section i.e M.plugins field 
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    ["simrat39/rust-tools.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
                require('rust-tools').setup({
                    server = {
                        on_attach = function (_, bufnr)
                        -- hover actions
                        vim.keymap.set("n", "<C-space>", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr })
                        -- Code action groups
                        vim.keymap.set("n", "<Leader>a", require('rust-tools').code_action_group.code_action_group, { buffer = bufnr })
                        end,
                    }
                })
        end
    },

    ["max397574/better-escape.nvim"] = {
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },

    -- code formatting, linting etc
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },
   -- Override plugin config if it has a module called
   -- If you wish to call a module, which is 'cmp' in this case
  --  ["hrsh7th/nvim-cmp"] = {
  --   override_options = function()
  --     local cmp = require "cmp"

  --     return {
  --       mapping = {
  --         ["<C-d>"] = cmp.mapping.scroll_docs(-8),
  --       },
  --     }
  --   end,
  -- },
}
