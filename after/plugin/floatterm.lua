-- show floaterm
vim.keymap.set("n", "<A-t>", ":FloatermToggle<CR>")

-- exit terminal mode
vim.keymap.set("t", "<A-e>", "<C-\\><C-n>")

-- new floaterm
vim.keymap.set("n", "<leader>tj", ":FloatermNew<CR>")

-- terminal next and previous
vim.keymap.set("n", "<leader>tn", ":FloatermNext<CR>")
vim.keymap.set("n", "<leader>tp", ":FloatermPrev<CR>")

-- hide floaterm
vim.keymap.set("n", "<leader>e", ":FloatermHide<CR>")

-- kill floaterm
vim.keymap.set("n", "<leader>tk", ":FloatermKill<CR>")
