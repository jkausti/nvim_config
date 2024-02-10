-- print('hello from telescope config')
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {})

-- git
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
