require('mason').setup({})

local lsp_zero = require('lsp-zero')

require('mason-lspconfig').setup({
	handlers = {
		lsp_zero.default_setup,
	},
})

