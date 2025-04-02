-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("n", "<C-s>", vim.cmd.write)

-- moving selected lines up and down
vim.keymap.set("v", "J", ":<C-u>exec 'move ' . (line(\"'>\")+1)<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":<C-u>exec 'move ' . (line(\"'<\")-2)<CR>gv=gv", { noremap = true, silent = true })

-- keeping cursor in middle when jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- replacing current word with clipboard
vim.keymap.set("n", "<leader>p", "viwp")

-- yanking stuff
vim.keymap.set("n", "<leader>y", "yiw")

-- goto end of line
vim.keymap.set("n", "§", "$")

-- jump between windows
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")

-- move windows
vim.keymap.set("n", "<S-H>", "<C-w>H")
vim.keymap.set("n", "<S-L>", "<C-w>L")

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

-- copilot

vim.keymap.set('i', '<C-J>', 'copilot#Accept("")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

-- codecompanion
vim.keymap.set("n", "<leader>a", ":CodeCompanion")
vim.keymap.set("v", "<leader>ae", ":'<,'>CodeCompanion /explain<CR>")
vim.keymap.set("v", "<leader>at", ":'<,'>CodeCompanion /test<CR>")
vim.keymap.set("n", "<leader>ac", ":CodeCompanionChat")
vim.keymap.set("n", "<leader>aa", ":CodeCompanionActions")
vim.keymap.set("n", "<leader>at", ":CodeCompanion /test<CR>")
