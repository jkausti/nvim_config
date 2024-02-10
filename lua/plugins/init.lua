local plugins = {
    -- {
    --     'williamboman/mason.nvim',
    -- },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help'},
            { 'hrsh7th/cmp-vsnip'},
            { 'hrsh7th/vim-vsnip' },
        },
        opts = function()
            return require "plugins.configs.nvim-cmp"
        end,
        config = function(_, opts)
            require("cmp").setup(opts)
        end
    },
    -- LSP
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
        opts = function()
          return require "plugins.configs.mason"
        end,
        config = function(_, opts)
          require("mason").setup(opts)

          -- custom nvchad cmd to install all mason binaries listed
          vim.api.nvim_create_user_command("MasonInstallAll", function()
            if opts.ensure_installed and #opts.ensure_installed > 0 then
              vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
            end
          end, {})

          vim.g.mason_binaries_list = opts.ensure_installed
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig'},
        },
        -- event = "User FilePost",
        config = function()
          require "plugins.configs.lsp"
        end,
    },
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function ()
            require("plugins.configs.telescope")
        end
    },
    -- material theme
    {
        "marko-cerovac/material.nvim",
        config = function()
            return require("plugins.configs.colors")
        end
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require("plugins.configs.treesitter")
        end
    },
    -- lazygit
    {
        'kdheepak/lazygit.nvim',
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function ()
            require("plugins.configs.lualine")
        end
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } },
        config = function ()
            require("plugins.configs.dashboard")
        end
    },
    {
        'm4xshen/autoclose.nvim',
        config = function()
            return require("plugins.configs.autoclose")
        end
    },
    {
        "numToStr/comment.nvim",
        lazy = false
    },
    {
        'voldikss/vim-floaterm'
    },
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
    },
    {
        'nvimtools/none-ls.nvim',
        -- opts = {
        --     on_attach = function(client, bufnr)
        --         local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        --         if client.supports_method("textDocument/formatting") then
        --             vim.api.nvim_clear_autocmds({
        --                 group = augroup,
        --                 buffer = bufnr,
        --             })
        --             vim.api.nvim_create_autocmd("BufWritePre", {
        --                 group = augroup,
        --                 buffer = bufnr,
        --                 callback = function()
        --                     vim.lsp.buf.format({ async = false })
        --                 end,
        --             })
        --         end
        --     end
        -- }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function ()
            require("plugins.configs.tree")
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggel", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fin["mkdp#util#install"]() end,
    },
    {
        "ziontee113/icon-picker.nvim",
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^4', -- Recommended
        ft = { 'rust' },
    },
}
require('lazy').setup(plugins)
