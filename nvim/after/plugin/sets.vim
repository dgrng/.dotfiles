set exrc
set number
set autoindent
set title
set shiftwidth=3
set tabstop=3 softtabstop=3
set autoindent
set smartindent
set scrolloff=8
"set colorcolumn=80
set signcolumn=yes
set termguicolors
set nohlsearch
set hidden
set noerrorbells
set expandtab
set incsearch

set path+=**
set wildmenu
set wildignore+=*/node_modules/*

set noswapfile

set clipboard+=unnamedplus

" Give more space for displaying messages.
set cmdheight=2

set mouse=nicr

" Splits setup
set splitbelow splitright

" Remap splits navigations to CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" split resizing 
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" split horz vert toggle
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K


" opening terminal inside VIM
map <leader>tt :sp term://fish<CR>
"map <leader>tt :T<CR>

" nerdtree mapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-m> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" gitgutter mapping
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
let g:gitgutter_show_msg_on_hunk_jumping = 0

" buffers keymapping
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

