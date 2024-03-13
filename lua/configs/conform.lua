local options = {
	lsp_fallback = true,


	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettier" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		cmake = { "cmake_format" },
        rust = {"rustfmt"}
	},
}

require("conform").setup(options)
