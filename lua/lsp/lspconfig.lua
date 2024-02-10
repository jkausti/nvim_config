
-- non-lsp-zero config
return {
    local on_attach = function(client, bufnr)

        --keybindings

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
    end

    vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
            local opts = { buffer = event.buf, remap = false }


            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "<S-l>", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "<S-h>", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, opts)
            --keybindings
            -- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            -- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            -- vim.keymap.set("n", "<S-l>", function() vim.diagnostic.goto_next() end, opts)
            -- vim.keymap.set("n", "<S-h>", function() vim.diagnostic.goto_prev() end, opts)
            -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            -- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            -- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            -- vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, opts)
        end
    })

    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


    local default_setup = function(server)
        require('lspconfig')[server].setup({
            capabilities = lsp_capabilities
        })
    end


    require('mason').setup({})
    require('mason-lspconfig').setup({
        ensure_installed = { 'pyright' },
        handlers = { default_setup },

        -- ['rust_analyzer'] = function() end
    })

    --rust 



    local cmp = require('cmp')


    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
        sources = {
            { name = 'nvim_lsp' },
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        }),
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
    })

    require('lspconfig').rust_analyzer.setup({
        capabilities = lsp_capabilities,
        on_attach = on_attach,
        cmd = {
            "rustup", "run", "stable", "rust-analyzer"
        }
    })
}
