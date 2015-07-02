set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
au BufReadPost *.hbs set syntax=html
colorscheme jellybeans

" vim settings
set nu
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" tag autocomplete for html files
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType hbs set omnifunc=htmlcomplete#CompleteTags

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rking/ag.vim'
" Plugin 'Valloric/YouCompleteMe' uncomment when vim updated

" shortcuts
map ,p :NERDTreeToggle<CR>
map <c-n> :NERDTreeToggle<CR>
map ,c :Commentary<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
