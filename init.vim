syntax on

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
set termguicolors
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

" set encoding=utf8
" let base16colorspace=256  
"  Access colors present in 256 colorspace"
" set t_Co=256 
" Explicitly tell vim that the terminal supports 256 colors"

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

" Move window
" map sh <C-w>h
" map sk <C-w>k
" map sj <C-w>j
" map sl <C-w>l

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

" map <leader>wc :wincmd q<cr>
map <C-w> :wincmd q<cr>

nnoremap ö }
nnoremap ä {

" ##################### Plugins ##################### 
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'

" tmux integration for vim
Plug 'benmills/vimux'

" color
Plug 'gruvbox-community/gruvbox'

call plug#end()


" ##################### Plugin settings ##################### 
" gruvbox
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" colorscheme gruvbox
colorscheme gruvbox
set background=dark

" COC
autocmd CursorHold * silent call CocActionAsync('highlight')

"tab completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <C-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" For enhanced <CR> experience with coc-pairs checkout :h coc#on_enter()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh <Plug>(coc-doHover)

" rename
nmap <silent> <leader>rn <Plug>(coc-rename)

nnoremap <leader>cr :CocRestart

" Coc explorer
:nmap <space>e :CocCommand explorer<CR>

" NERDTree
" close NERDTree after a file is opened
" let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
" let NERDTreeShowHidden=1
" Toggle NERDTree
" nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
" nmap <silent> <leader>y :NERDTreeFind<cr>

" undotree
nnoremap <leader>u :UndotreeShow<CR>
