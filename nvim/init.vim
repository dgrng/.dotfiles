
" Plugins start

call plug#begin("~/.vim/plugged")

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'airblade/vim-gitgutter'
Plug 'hrsh7th/nvim-compe'
" Plug 'vim-airline/vim-airline'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sainnhe/gruvbox-material'

" debug
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'

Plug 'buoto/gotests-vim'

call plug#end()

" Plugins end

syntax enable
set background=dark

colorscheme gruvbox-material 

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_better_performance = 1

if has("unix")
   let s:uname = system("uname -s")
   if s:uname == "Darwin\n"
      runtime ./mac.vim
   endif
endif

let mapleader = " "

nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi
