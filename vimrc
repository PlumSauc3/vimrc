set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'junegunn/seoul256.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'lrvick/Conque-Shell'
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
"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
:set number relativenumber
syntax on
let g:seoul256_background = 255
colo seoul256-light
if $TERM == "xterm-256color"
  set t_Co=256
endif
:set guifont=Consolas:h14

let g:seoul256_srgb = 1

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" COMPILE AND RUN COMMANDS
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++11 -O2 "%" -o "%:r" && "%:r" <CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc "%" -o "%:r" && "./%:r.out" <CR>

:autocmd InsertEnter,InsertLeave * set cul!
