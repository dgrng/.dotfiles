
" Plugins start

call plug#begin("~/.vim/plugged")

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'airblade/vim-gitgutter'
Plug 'hrsh7th/nvim-compe'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sainnhe/gruvbox-material'

Plug 'buoto/gotests-vim'

call plug#end()

" Plugins end

syntax enable
set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_italic = 1
colorscheme gruvbox-material 
highlight Normal guibg=none

if has("unix")
   let s:uname = system("uname -s")
   if s:uname == "Darwin\n"
      runtime ./mac.vim
   endif
endif

let mapleader = " "

nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi
