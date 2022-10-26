packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'vlime/vlime', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }
Jetpack 'tpope/vim-fireplace', { 'for': 'clojure' }
Jetpack 'tomasr/molokai'
call jetpack#end()

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set number
set smartcase
set incsearch
colorscheme molokai

set t_Co=256
set cursorline

set foldmethod=syntax
let perl_fold=1
set foldlevel=100 "Don't autofold anything

set clipboard+=unnamed
set backspace=indent,eol,start

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
