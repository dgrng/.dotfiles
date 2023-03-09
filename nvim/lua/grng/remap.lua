vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- dont yank on x
keymap.set('n', 'x', '"_x')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- buffers
keymap.set('n', '<leader>bn', ':bn<Return>')
keymap.set('n', '<space>bp', ':bp<Return>')
keymap.set('n', '<space>bd', ':bd<Return>')
keymap.set('i', '¥', '\\')
