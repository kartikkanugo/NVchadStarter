local M = {}

function M.setup()
    local dap = require("dap")

    -- Python adapter
    dap.adapters.python = function(cb, _)
        local cwd = vim.fn.getcwd()
        local python_path = nil

        if vim.fn.executable(cwd .. "\\venv\\Scripts\\python.exe") == 1 then
            python_path = cwd .. "\\venv\\Scripts\\python.exe"
        elseif vim.fn.executable(cwd .. "\\.venv\\Scripts\\python.exe") == 1 then
            python_path = cwd .. "\\.venv\\Scripts\\python.exe"
        else
            python_path = "python"
        end

        cb({
            type = "executable",
            command = python_path,
            args = { "-m", "debugpy.adapter" },
            options = { source_filetype = "python" },
        })
    end

    -- Configurations
    dap.configurations.python = {
        {
            type = "python",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            pythonPath = function()
                local cwd = vim.fn.getcwd()
                if vim.fn.executable(cwd .. "\\venv\\Scripts\\python.exe") == 1 then
                    return cwd .. "\\venv\\Scripts\\python.exe"
                elseif vim.fn.executable(cwd .. "\\.venv\\Scripts\\python.exe") == 1 then
                    return cwd .. "\\.venv\\Scripts\\python.exe"
                else
                    return "python"
                end
            end,
        },
    }
end

return M
