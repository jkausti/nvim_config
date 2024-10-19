-- standard cursor
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- linenumbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- autcompletion settings
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 50)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

-- vim.cmd("let g:python_indent = {}")
-- vim.g.python_indent = {}

local indent_setup = "let g:python_indent = {" ..
"'disable_parentheses_indenting': v:false, " ..
"'closed_paren_align_last_line': v:false, " ..
"'searchpair_timeout': 150, " ..
"'continue': 'shiftwidth()', " ..
"'open_paren': 'shiftwidth()', " ..
"'nested_paren': 'shiftwidth()' " ..
"}"

vim.cmd(indent_setup)
-- vim.g.python_indent.disable_parenthesis_indenting = false
-- vim.g.python_indent.closed_paren_align_last_line = false
-- vim.g.python_indent.searchpair_timeout = 150
-- vim.g.python_indent.continue = "shiftwidth()"
-- vim.g.python_indent.open_paren = "shiftwidth()"
-- vim.g.python_indent.nested_paren = "shiftwidth()"
