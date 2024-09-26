local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

local map = vim.keymap.set
map(
    "n",
    "<leader>du",
    "<cmd>lua require('dapui').toggle()<CR>",
    { desc = "Toggle DAP UI" }
)

map("n", "<F1>", "<cmd> DapContinue<CR>", { desc = "Continue DAP" })
map("n", "<F2>", "<cmd> DapStepInto <CR>", { desc = "Step into" })
map("n", "<F3>", "<cmd> DapStepOver <CR>", { desc = "Step over" })
map("n", "<F4>", "<cmd> DapStepOut <CR>", { desc = "Step out" })

dap.listeners.after.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.after.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
