"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bannus's vimrc
"
" Adapted from tmacwill/vimrc
"
" Shortcuts:
"   ; maps to :
"   ,a: ack from the current directory
"   ,c<space>: toggle comments
"   ,e: open file in new tab
"   ,l: toggle NERDTree
"   ,h: open a shell in a new tab
"   ,ig: toggle indentation guide
"   ,k: syntax-check the current file
"   ,m: toggle mouse support
"   ,p: toggle paste mode
"   ,o: open file
"   ,s: split window
"   ,t: new tab
"   ,w: close tab
"   kj: enter normal mode and save
"   Ctrl+{h,j,k,l}: move among windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" long live vim
set encoding=utf-8
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'tomtom/checksyntax_vim'

" color schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/Skittles-Dark'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'vim-scripts/wombat256.vim'

" plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Lokaltog/vim-powerline'
Plugin 'felixr/vim-multiedit'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'henrik/vim-indexed-search'

" syntax files
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'PProvost/vim-ps1'

call vundle#end()

" checksyntax config
let g:checksyntax#auto_mode = 0

" indent-guide config
let g:indent_guides_guide_size = 1

" ctrlp config
let g:ctrlp_working_path_mode = 'ra'
" ignore files in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" syntax highlighting and auto-indentation
syntax on
filetype plugin indent on
:inoremap # X<C-H>#
set ai
set si
set nu

" omg folding is the worst
set nofoldenable

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" always show tab line to avoid annoying resize
set showtabline=2

" searching options
set incsearch
set showcmd
set ignorecase
set smartcase

" disable backups
set nobackup
set nowritebackup
set noswapfile

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" font options
set background=dark
set t_Co=256
colorscheme smyck
if has('win32')
    set gfn=Consolas:h11
elseif has('mac')
    set gfn=Inconsolata:h14,Consolas:h11
else
    set gfn=DejaVu\ Sans\ Mono\ 10
endif

" keep at least 5 lines below the cursor
set scrolloff=5

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" enable mouse support
set mouse=a

" better tab completion on commands
set wildmenu
set wildmode=list:longest

" close buffer when tab is closed
set nohidden

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>e :tabnew<CR>:CtrlP<CR>
nnoremap <leader>h :tabnew<CR>:ConqueTerm bash<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>k :CheckSyntax<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :

" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>

" more logical vertical navigation. disable if moving by a count
" noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
" noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> k gk
nnoremap <silent> j gj

" make copy/pasting nice
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>

" relative line numbers
set number
set relativenumber

