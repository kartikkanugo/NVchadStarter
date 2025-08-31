local M = {}

function M.setup()
    local dap = require("dap")

    dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
            command = "C:/Users/karti/AppData/Local/nvim-data/mason/packages/codelldb/extension/adapter/codelldb.exe", -- 👈 adjust path
            args = { "--port", "${port}" },
        },
    }

    dap.configurations.cpp = {
        {
            name = "Launch file",
            type = "codelldb",
            request = "launch",
            program = function()
                return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "\\", "file")
            end,
            cwd = "${workspaceFolder}",
            stopOnEntry = false,
            --terminal = "integrated",
        },
    }

    -- Reuse for C and Rust
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
end

return M
