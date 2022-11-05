local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
   defaults = {
      prompt_prefix = " >",
      color_devicons = true,
      file_ignore_patterns = { "node_modules", ".git", ".vscode", ".next" }
   },
   pickers = {
      find_files = {
         hidden = true
      }
   },
   extensions = {
      file_browser = {
         hijack_netrw = false
      }
   }
}

telescope.load_extension("file_browser")

vim.keymap.set("n",
   "<leader>fn",
   function()
      telescope.extensions.file_browser.file_browser({
         hidden = "true"
      })
   end)

vim.keymap.set("n", "<leader>ff", function()
   builtin.find_files()
end)

vim.keymap.set("n", "<leader>fg", function()
   builtin.live_grep()
end)

vim.keymap.set("n", "<leader>fb", function()
   builtin.buffers()
end)

vim.keymap.set("n", "<leader>fh", function()
   builtin.help_tags()
end)
