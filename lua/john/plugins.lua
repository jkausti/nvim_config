local plugins = {
    -- LSP Support
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},
    -- {
    -- 	'neovim/nvim-lspconfig',
    -- 	dependencies = {
    -- 		{'hrsh7th/cmp-nvim-lsp'},
    -- 	}
    -- },
    -- Autocompletion
    -- {
    -- 	'hrsh7th/nvim-cmp',
    -- 	dependencies = {
    -- 		{'L3MON4D3/LuaSnip'}
    -- 	},
    -- },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    },
    {
        'williamboman/mason.nvim',
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
    },
    -- LSP
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
    },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    -- material theme
    {
        "marko-cerovac/material.nvim"
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

    },
    -- harpoon
    {
        "ThePrimeagen/harpoon",
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
        }
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    {
        'm4xshen/autoclose.nvim'
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
    }
}
return plugins
