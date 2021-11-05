
" Plugins start

call plug#begin("~/.vim/plugged")

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'airblade/vim-gitgutter'
Plug 'hrsh7th/nvim-compe'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ldelossa/vimdark'
Plug 'kadekillary/skull-vim'

call plug#end()

" Plugins end

colorscheme vimdark 
highlight Normal guibg=none

let mapleader = " "

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

autocmd BufWritePre *.go lua goimports(1000)

" terminal
tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
autocmd TermOpen * startinsert

nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi

