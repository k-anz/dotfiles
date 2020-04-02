"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
" set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim
" dein detup
let s:dein_dir = $HOME . '/.vim/bundles'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " load from toml
  let s:toml_dir = $HOME . '/.vim/rc/'
  call dein#load_toml(s:toml_dir . 'dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . 'dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" install new plugin
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

map <Leader>mn  :MemoNew<CR>
map <Leader>ml  :MemoList<CR>
map <Leader>mg  :MemoGrep<CR>

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
