
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

colorscheme gruvbox 
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

