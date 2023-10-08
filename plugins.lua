local plugins = {
    {
        "Pocco81/TrueZen.nvim",
        -- lazy= false, -- load plugin at start-up
        event = "BufEnter *.tex"
    },

    {
        "folke/which-key.nvim",
        lazy = false,
        cmd = { "WhichKey"},
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.configs.null-ls"
            end,
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },

    {
        "simrat39/rust-tools.nvim",
        after = "nvim-lspconfig",
        event = "BufEnter *.rs",
        config = function()
            require "custom.configs.rust-tools"
        end,
    },

    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        lazy = false,
    },

    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
            require "custom.configs.null-ls" -- require your null-ls config here
        end,
    },

    -- arduino tools
    { "sudar/vim-arduino-syntax" },
    { "sudar/vim-arduino-snippets"},
    { "normen/vim-pio", cmd = "Piostart" },
    { "github/copilot.vim", lazy = false},

    -- tex tools
    { "lervag/vimtex", event = "BufEnter *.tex" },
    { "KeitaNakamura/tex-conceal.vim", event = "BufEnter *.tex" },
    { "matze/vim-tex-fold", event = "BufEnter *.tex" },
    { "mattn/emmet-vim", lazy = false },
    {
        "iurimateus/luasnip-latex-snippets.nvim",
        -- vimtex isn't required if using treesitter
        requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
        config = function()
            require'luasnip-latex-snippets'.setup()
            -- or setup({ use_treesitter = true })
            require("luasnip").config.setup { enable_autosnippets = true }
        end,
    },

    -- md file renderer
    { "instant-markdown/vim-instant-markdown", event = "BufEnter *.md" },
}

return plugins
