return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},
	{
		"williamboman/mason.nvim",

		opts = {

			ensure_installed = {
				"eslint-lsp",
				"rust-analyzer",
				"typescript-language-server",
				"clangd",
				"clang-format",
				"black",
				"cmake-language-server",
				"codelldb",
				"html-lsp",
				"json-lsp",
				"prettier",
				"pyright",
				"stylua",
				"lua-language-server",
				"cmakelang",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"html",
				"css",
				"bash",
				"javascript",
				"typescript",
				"c",
				"cpp",
				"rust",
				"python",
				"cmake",
				"gitignore",
				"json",
				"json5",
				"lua",
				"yaml",
				"toml",
			},
		},
	},
	-- In order to modify the `lspconfig` configuration:
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
}
