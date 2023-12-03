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
