syntax on

"set noerrorbells
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab
"set smartindent
"set nu
"set nowrap
"set smartcase
"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir
"set undofile
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey


set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode

" use OS clipboard (linux)
set clipboard=unnamedplus

" c Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" disable ex mode
map Q <Nop>

" enable mouse scrolling (with tmux)
set mouse=a

" set a map leader for more key combos
let mapleader = ' '
        
" shortcut to save
nmap <leader>, :w<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split window
nmap ss :split<Return><C-j>
nmap sv :vsplit<Return><C-l>

" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

nnoremap <C-t> :tabnew<CR>

" move a marked codeblock up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" resize with arrow-keys
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Up> :3winc +<CR>
nnoremap <Down> :3winc -<CR>

map <C-w> :wincmd q<cr>

nnoremap ö }
nnoremap ä {

