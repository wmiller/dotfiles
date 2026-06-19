vim.pack.add({
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-telescope/telescope.nvim"
}, { confirm = false })

require("telescope").setup({})

local pickers = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", pickers.find_files, { desc = "Search Files" })
vim.keymap.set("n", "<leader>sg", pickers.live_grep, { desc = "Search by Grep" })
vim.keymap.set("n", "<leader>sb", pickers.buffers, { desc = "Search Buffers" })
