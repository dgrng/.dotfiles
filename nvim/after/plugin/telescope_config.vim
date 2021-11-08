lua << EOF
require('telescope').setup{
   defaults = {
      file_ignore_patterns = {"node_modules", ".git", ".vscode", ".next"}
   },
   pickers = {
      find_files = {
         hidden = true
      }
   }
}
EOF

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
