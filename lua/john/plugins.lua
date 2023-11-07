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
    }
}
return plugins
