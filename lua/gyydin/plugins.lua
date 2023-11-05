
local plugins = {
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	-- LSP Support
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		}
	},
	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{'L3MON4D3/LuaSnip'}
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
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"mbbill/undotree",
	},
	{
		'kdheepak/lazygit.nvim',
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	}
}

return plugins
