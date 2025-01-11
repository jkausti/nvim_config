-- require('mason').setup({})
--
-- local lspconfig = require('l')
--
-- require('mason-lspconfig').setup({
--     handlers = {
--         lsp_zero.default_setup,
--     },
-- })
-- require('mason').setup({})

local options = {
    ensure_installed = {
        'black',
        -- 'ruff',
        'lua-language-server',
        -- 'pyright',
        'prettierd',
    }
}
return options
