local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- navigate
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)

-- close buffer
map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
