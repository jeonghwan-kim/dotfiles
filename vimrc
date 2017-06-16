""" Vundle settings 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'elzr/vim-json'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'majutsushi/tagbar'
" Plugin 'Yggdroot/indentLine'
" Plugin 'scrooloose/syntastic' 
" All of your Plugins must be aded before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

""" Editor settings

set nocompatible " 오리지날 VI와 호환하지 않음
set autoindent  " 자동 들여쓰기
set cindent " C 프로그래밍용 자동 들여쓰기
set smartindent " 스마트한 들여쓰기
set wrap
set nowrapscan " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup " 백업 파일을 안만듬
set visualbell " 키를 잘못눌렀을 때 화면 프레시
set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=2 " 자동 들여쓰기 2칸
set number " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8      " 터미널 인코딩
set expandtab " 탭대신 스페이스
set hlsearch " 검색어 강조, set hls 도 가능
set ignorecase " 검색시 대소문자 무시, set ic 도 가능
set tabstop=2 "  탭을 2칸으로
set lbr
set incsearch "  키워드 입력시 점진적 검색
syntax on "  구문강조 사용
filetype indent on "  파일 종류에 따른 구문강조
set background=dark " 하이라이팅 lihgt / dark
"colors distinguished  "  vi 색상 테마 설정
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000 "  vi 편집기록 기억갯수 .viminfo에 기록


""" Shortcuts

map <f1> :NERDTreeToggle<CR>

