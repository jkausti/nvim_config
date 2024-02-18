require("nvim-tree").setup({
    update_focused_file = {
        enable = true
    }
})

-- mapping
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")
