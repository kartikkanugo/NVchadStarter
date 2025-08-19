local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    javascript = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    jsx = { "prettierd", "prettier" },
    tsx = { "prettierd", "prettier" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    cmake = { "cmake_format" },
    rust = { "rust-analyzer" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
