" ===================================================================
" Minimalist Setting
" ===================================================================

" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Minimalist 
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Multiple Plug commands can be written in a single line using | separators
Plug 'Sirver/ultisnips' | Plug 'honza/vim-snippets'

" Golang
Plug 'fatih/vim-go'

" NERD tree
Plug 'scrooloose/nerdtree'

" Visual Code Dark - Vim color theme
Plug 'tomasiser/vim-code-dark'

" All of your Plugins must be added before the following line
call plug#end()            " required


" =============================================================================
" Color Scheme Setting
" =============================================================================
colorscheme codedark 
let &t_Co=256


" =============================================================================
" =============================================================================
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on    " required
syntax on


" =============================================================================
" My Bundle
" =============================================================================
"Plugin 'SrcExpl'
"Plugin 'taglist-plus'
"Plugin 'bling/vim-airline'      " Status Line
"Plugin 'SuperTab'


" =============================================================================
" For NodeJS
" =============================================================================
"Plugin 'moll/vim-node'
"Plugin 'Tabular'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'


" =============================================================================
" For Python
" =============================================================================
"Bundle 'klen/python-mode'


" =============================================================================
" Swift Plugin
" =============================================================================
" Plugin 'apple/swift'
" Plugin 'kballard/vim-swift'
" Plugin 'SWIFT-ATE-Syntax'
" Plugin 'file:///Users/SeoSangho/swift', {'rtp': 'utils/vim', 'name': 'Swift-Syntax'}


" =============================================================================
" vim 환경설정
" =============================================================================
scripte utf-8
" vim:set fenc=utf-8 tw=0:
" Vim setting for sirini

" clipboard
set clipboard=unnamed

" Vim 전용 기능 사용
set nocp

" 명령어 기록 갯수
"set hi=100

" 백스페이스 사용
set bs=indent,eol,start

" 인코딩 설정
"let &tenc=&enc
"set enc=utf-8
set fenc=utf-8
"set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

" 커서 위치 항상 보이기
set ru

" 완성중인 명령을 표시
"set sc

" 줄번호 표시
set nu

" 줄 번호 표시 너비 설정
set nuw=5

" 탭 크기 설정
" set ts=4
set sw=4
set softtabstop=4 
set tabstop=4
set shiftwidth=4
set expandtab

" 탭 >> 공백 변환 사용안함
set noet
set sts=0

" 자동 줄바꿈 안함
set nowrap

" 자동 들여쓰기
set autoindent

" C프로그래밍 자동 들여쓰기
set cindent

" magic 기능 사용
set magic

" 이동 동작시 줄의 시작으로 자동 이동
"set sol

" 비쥬얼 모드 동작 설정
"set sel=exclusive

" 괄호짝 찾기에서 <> 도 찾도록 추가
set mps+=<:>

" 새로 추가된 괄호 짝 보여주기
set sm

" 검색어 강조
set hls

" 검색시 파일 끝에서 되돌리기 안함
set nows

" 검색시 대소문자 구별 안함
set ic

" 스마트한 대소문자 구별 기능 사용
set scs

" 항상 status 라인을 표시
set ls=2

" 커스텀 확장자들에게 파일 형식 설정
"au BufRead,BufNewFile *.dic setl ft=php

"파일 형식에 따른 신택스 하이라이팅 켜기
sy enable

" more subtle popup colors
if has ('gui_running')
	set guifont="Source Code Pro":h13
	set linespace=2
	highlight Pmenu guibg=#cccccc gui=bold    
endif


" =============================================================================
" Highlight excess line length
" =============================================================================
augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup EN


" =============================================================================
" ctags database path 설정 
" =============================================================================
" set tag=./tags;/
" let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


" =============================================================================
" cscope database path 설정 
" =============================================================================
"function! LoadCscope()
"	let db = findfile("cscope.out", ".;")
"	if (!empty(db))
"		let path = strpart(db, 0, match(db, "/cscope.out$"))
"		set nocscopeverbose " suppress 'duplicate connection' error
"   		exe "cs add " . db . " " . path
"		set cscopeverbose
"    endif
"endfunction
"au BufEnter /* call LoadCscope()


" =============================================================================
" Tag List 환경설정 
" =============================================================================
filetype on							" vim filetype on
nmap  <F7> :TlistToggle<CR>			" F7 key = Tag List Toggle

let Tlist_Ctags_Cmd = "/usr/bin/ctags"	" ctags 프로그램 위치
let Tlist_Inc_Winwidth     = 0		" window width change off
let Tlist_Exit_OnlyWindow  = 0		" tag/file 선택 완료 시 taglist
let Tlist_Auto_Open 	   = 0		" vim 시작 시 window open
let Tlist_Use_Right_Window = 1		" vim 시작 시 window open


" =============================================================================
" Source Explorer 환경설정
" =============================================================================
nmap  <F8> :SrcExplToggle<CR>		" F8 key = SrcExpl TOggle
" nmap  h							" 왼쪽 창으로 이동
" nmap  j							" 하단(preview) 창으로 이동
" nmap  k							" 상단 창으로 이동
" nmap  l							" 오른쪽 창으로 이동

let g:SrcExpl_winHeight    = 8		" SrcExpl 윈도우 높이 지정
let g:SrcExpl_refreshTime  = 100	" refreshing time = 100ms
let g:SrcExpl_jumpKey      = ""		" 해당 definition으로 jump
let g:SrcExpl_gobackKey    = ""		" back
let g:SrcExpl_isUpdateTags = 0		" tag file update = off


" =============================================================================
" NERD Tree 환경설정
" =============================================================================
let NERDTreeWinPos = "left"		" NERD Tree위치 = 왼쪽
nmap <F9> :NERDTreeToggle<CR>	" F9 Key = NERD Tree Toggle

