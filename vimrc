"===================================================================
" 
"===================================================================
"
" minimalist download
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Brief help
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugUpdate     - Install or update plugins
" :PlugUpgrade    - Upgrade vim-plug itself
" :PlugStatus     - Check the status of plugins
" :PlugDiff       - Examine changes from the previous update and the pending changes
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Minimalist
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'

" Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'

call plug#end()

"colorscheme gruvbox
"set background=dark
set t_Co=256
set t_ut=
colorscheme codedark

"filetype plugin indent on

if has("syntax")
  syntax on
endif

set hlsearch
set nu
set autoindent
set cindent

set ts=4 " Tab width
set shiftwidth=4 " autoindent width

set laststatus=2 " status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set backspace=indent,eol,start

set enc=utf-8
set fenc=utf-8

"set sts=4
"set showmatch
"set smartcase
"set smarttab
"set smartindent
"set ruler
"set fileencodings=utf8,euc-kr

nmap <C-E> :NERDTreeToggle<CR>
nmap <C-T> :Tagbar<CR>

" autocmd
autocmd BufNewFile *.py colo morning|set ts=2 sw=2
autocmd BufNewFile *.txt colo evening

" vim-code-dark theme for airline
let g:airline_theme = 'codedark'
