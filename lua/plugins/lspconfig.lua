return {
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "clangd", "pyright", "lua-language-serve" } },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
		end,
	},
}
