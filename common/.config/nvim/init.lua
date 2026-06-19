vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.winborder = "rounded"
vim.opt.number = true
vim.opt.wrap = false
vim.opt.termguicolors = true

-- Indentation
vim.opt.tabstop = 4 -- tab width
vim.opt.shiftwidth = 4 -- Indent width
vim.opt.softtabstop  = 4 -- Soft tab stop
vim.opt.expandtab = false -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart auto-indent
vim.opt.autoindent = true -- Auto-indent

-- Search
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true -- Case sensitive if uppercase in search
vim.opt.hlsearch = false -- highlight search
vim.opt.incsearch = true -- Show matches as you type

vim.cmd.colorscheme("catppuccin")

local map = vim.keymap.set

map("i", "jj", "<esc>")
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<esc>", "<cmd>nohlsearch<CR>")

-- Navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


require("vim._core.ui2").enable()
