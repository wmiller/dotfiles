vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
	ensure_installed = {
		"c",
		"cpp",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"go",
		"javascript",
		"html",
		"python",
		"rust",
		"toml",
		"bash",
		"zig"
	},
	sync_install = false,
	highlight = { enable = true, disable = { "latex" } },
	indent = { enable =  true, disable = { "python" } },
})

require("nvim-treesitter.install").update("all")

-- require("nvim-treesitter.configs").setup({
-- 	auto_install = true
-- })
