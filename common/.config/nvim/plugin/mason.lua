vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup()

local lsp_servers = {
	lua_ls = {},
	clangd = {},
	docker_language_server = {},
	basedpyright = {
		analysis = {
			autoSearchPaths = true,
			diagnosticMode = "openFilesOnly",
			useLibraryCodeForTypes = true,
			typeCheckingMode = "all",
			diagnosticSeverityOverrides = {
				reportAny = false,
				reportMissingTypeArgument = false,
				reportMissingTypeStubs = false,
				reportUnknownArgumentType = false,
				reportUnknownMemberType = false,
				reportUnknownParameterType = false,
				reportUnknownVariableType = false,
				reportUnusedCallResult = false,
			},
		},
		python = {}
	}
}

require("mason-lspconfig").setup({
	ensure_installed = vim.tbl_keys(lsp_servers)
})

for server, config in pairs(lsp_servers) do
	vim.lsp.config(server, {
		settings = config,
		on_attach = function(_, bufnr)
			-- Create keymaps if the server actually attaches
		end
	})
end
