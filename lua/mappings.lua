require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")
map("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "telescope find git files  " })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


local dap = require("dap")

map("n", "<F5>", dap.continue, { desc = "DAP Continue/Start" })
map("n", "<F9>", dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
map("n", "<F10>", dap.step_over, { desc = "DAP Step Over" })
map("n", "<F11>", dap.step_into, { desc = "DAP Step Into" })
map("n", "<F12>", dap.step_out, { desc = "DAP Step Out" })

-- Optional extras
map("n", "<leader>dr", dap.repl.open, { desc = "DAP Open REPL" })
map("n", "<leader>dl", dap.run_last, { desc = "DAP Run Last" })


local dapui = require("dapui")
map("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
