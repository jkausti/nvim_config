local M = {}

M.on_attach = function(client, bufnr)
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
    local opts = { buffer = bufnr, noremap = true }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<S-l>", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<S-h>", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, opts)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

-- M.capabilities.textDocument.completion.completionItem = {
--     documentationFormat = { "markdown", "plaintext" },
--     snippetSupport = true,
--     preselectSupport = true,
--     insertReplaceSupport = true,
--     labelDetailsSupport = true,
--     deprecatedSupport = true,
--     commitCharactersSupport = true,
--     tagSupport = { valueSet = { 1 } },
--     resolveSupport = {
--         properties = {
--             "documentation",
--             "detail",
--             "additionalTextEdits",
--         },
--     },
-- }


require("mason-lspconfig").setup()

-- rust
--
require("mason-lspconfig").setup_handlers {
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = M.on_attach,
            capabilities = M.capabilities
        }
    end,
    ['pyright'] = function () end,
    ['rust_analyzer'] = function() end
}

require("lspconfig").pyright.setup({
    capabilities = function ()
        local capabilities = M.capabilities
        capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
        return capabilities
    end,
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                diagnosticSeverityOverrides = {
                    reportUnusedVariable = "warning", -- or anything
                },
                typeCheckingMode = "basic",
            },
        },
    },
    on_attach = M.on_attach
})
-- require("lspconfig").rust_analyzer.setup({
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--     -- cmd = {
--     --     "rustup", "run", "stable", "rust-analyzer"
--     -- },
--     settings = {
--         ['rust-analyzer'] = {
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 allFeatures = true
--             },
--             procMacro = {
--                 enable = true
--             },
--         }
--     }
-- })

-- lua
-- require("lspconfig").lua_ls.setup({
--     on_attach = M.on_attach,
--     capabilities = M.capabilities
-- })

return M
