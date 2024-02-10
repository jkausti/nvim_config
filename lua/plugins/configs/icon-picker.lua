local icon_picker = require("icon-picker")

icon_picker.setup({
    disable_legacy_commands = true
})

-- keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>nn", "<cmd>IconPickerNormal<cr>", opts)
vim.keymap.set("n", "<leader>ny", "<cmd>IconPickerYank<cr>", opts)
