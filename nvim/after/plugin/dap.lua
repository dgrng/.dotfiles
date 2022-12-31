vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>") 
vim.keymap.set("n", "<F3>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('condition: '))<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")

vim.keymap.set("n", "<leader>dq", ":lua require'dap'.terminate()<CR>") 

-- ui keymap
vim.keymap.set("n", "<leader>du", ":lua require'dapui'.toggle()<CR>")

-- setups
require("dap-go").setup()
require("dapui").setup({
   icons= { expanded = "↓", collapsed = "→" , current_frame = "current"},
   layouts = {
      {
         elements = {
            { id = "scopes", size = 0.5},
            "breakpoints",
            "stacks",
         },
         size = 45,
         position = "left",
      },
      {
         elements = {
            "watches",
            "repl",
         },
         size = 0.25,
         position = "bottom",
      }
   }
})

-- listeners
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
   dapui.open()
end
dap.listeners.after.event_terminated["dapui_config"] = function()
   dapui.close()
end
dap.listeners.after.event_exited["dapui_config"] = function()
   dapui.close()
end
