syntax on
set hlsearch
set incsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set gcr=n-v-c:block-Cursor-blinkwait175-blinkoff0-blinkon175
set autoindent
set mouse=""
set fileformats=unix
set fileencodings=utf8,gb2312,gbk,gb18030
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set nu
set ruler

map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>

filetype plugin indent on
filetype indent on
filetype detect
autocmd FileType make set noexpandtab

if &filetype == 'text'
else
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%181v.\+/
endif

if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif
