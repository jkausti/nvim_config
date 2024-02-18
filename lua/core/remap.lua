-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("n", "<C-s>", vim.cmd.write)

-- moving selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv'")

-- keeping cursor in middle when jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- best remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yanking stuff
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- goto end of line
vim.keymap.set("n", "§", "$")

-- jump between windows
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")

vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>')

-- close buffer
vim.keymap.set('n', '<leader>c', '<Cmd>BufferClose<CR>')

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

-- Neogen docstring generation
vim.keymap.set("n", "<Leader>nf", ":DogeGenerate numpy<CR>", opts)
