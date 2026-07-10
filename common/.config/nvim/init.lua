vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.winborder = "rounded"
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

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

-- Word wrap
vim.opt.wrap = true -- Enable visual line wrapping
vim.opt.linebreak = true -- Break lines at word boundaries instead of character
vim.opt.breakindent = true -- Keep indentation for wrapped lines to preserve code readibility

-- Theme!
vim.cmd.colorscheme("catppuccin")

local map = vim.keymap.set

-- Basics
map("i", "jj", "<esc>")
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<esc>", "<cmd>nohlsearch<CR>")

-- Split navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Editing
map({'n', 'i'}, '<C-BS>', '<C-W>', { noremap = true, silent = true })
map({'n', 'i'}, '<C-h>', '<C-W>', { noremap = true, silent = true })

-- Neovide-specific stuff
if vim.g.neovide then
	vim.g.neovide_scale_factor = 0.8
	vim.g.neovide_corner_preference = "round"
	vim.g.neovide_scroll_animation_length = 0.1
end

require("vim._core.ui2").enable({})
