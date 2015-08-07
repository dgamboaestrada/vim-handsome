set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
"My plugins
Bundle 'powerline/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'suan/vim-instant-markdown'
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
set smartcase                   " ignore case if search pattern is all lowercase," case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to "    shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore this extensions
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep

map <F2> :NERDTreeToggle<cr>
map <F3> :InstantMarkdownPreview<cr>

autocmd FileType groovy setlocal noexpandtab copyindent  preserveindent  softtabstop=0  shiftwidth=4  tabstop=4
au BufReadPost *.twig set syntax=html
au BufReadPost *.ejs set syntax=html
au BufReadPost *.ctp set syntax=php
