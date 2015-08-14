set nocompatible              " be iMproved, required
filetype off                  " required

" schema config
syntax enable
set background=dark " values light, dark
let g:solarized_termcolors=16
let g:solarized_termtrans=1
set t_Co=256
colorscheme solarized
" end schema config

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin vim-airline
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" End vim-airline
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim.git'
Plugin 'ap/vim-buftabline'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin gitgutter
if has('signs')
    Plugin 'airblade/vim-gitgutter'
    let g:gitgutter_escape_grep = 1   " Use raw grep
    let g:gitgutter_eager = 0         " Don't run eagerly
endif
" End gitgutter

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set number                      " always show line numbers
set mouse=a                     " copy text with the mouse
set nowrap                      " don't wrap lines
set smartindent                 " smart indent script
set tabstop=4                   " a tab is four spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set expandtab                   " convert tabs to spaces
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore this extensions
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set cursorline                  " hightlight current line
set wildmenu                    " visual autocomplete for command menu
set list                        " ordered sequence of items
set listchars=trail:·,tab:»»    " trail: Character to show for trailing spaces, tab: two characters to be used to show a tab.

autocmd FileType groovy setlocal noexpandtab copyindent  preserveindent  softtabstop=0  shiftwidth=4  tabstop=4
au BufReadPost *.twig set syntax=html
au BufReadPost *.ejs set syntax=html
au BufReadPost *.ctp set syntax=php

" Mapping
let g:ctrlp_map = '<F4>' " mapping CtrlP
nnoremap <S-u> :red <CR> " redo
" mapping NERDTree
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>    " locates the file in the tree
" mapping move line
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" mapping save
:inoremap <c-s> <Esc>:update<CR>
:inoremap <c-s> <c-o>:update<CR>
nnoremap <C-s> :w<CR>
vmap <C-s> <esc>:w<CR>gv
" mapping change buffer (tab)
set hidden
nnoremap <C-N> :bnext<CR>   " next buffer
nnoremap <C-P> :bprev<CR>   " prev buffer
nnoremap <C-X> :bd<CR>      " close single buffer, if has changes needs ! to force
