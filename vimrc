"===================================================================
" Minimalist Setting
"===================================================================
"
" minimalist download
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Brief help
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Minimalist
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tomasiser/vim-code-dark'
Plug 'majutsushi/tagbar'

call plug#end()

colorscheme codedark

filetype plugin indent on

if has("syntax")
  syntax on
endif

set hlsearch
set nu
set ai
set cindent

set ts=4
set sw=4
set softtabstop=2

set laststatus=2 " status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set fileencodings=utf8,euc-kr

nmap <C-E> :NERDTreeToggle<CR>
nmap <C-T> :Tagbar<CR>

" autocmd
autocmd BufNewFile *.py colo morning|set ts=2 sw=2
autocmd BufNewFile *.txt colo evening
