"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/chengang/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/chengang/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'toyamarinyon/vim-swift'
"NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript', 'html']}}

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax on
"colo ansi_blows
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
set hlsearch
set incsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
if &filetype == 'text'
else
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%181v.\+/
endif
filetype indent on

if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif
set backspace=2
set gcr=n-v-c:block-Cursor-blinkwait175-blinkoff0-blinkon175

set fileformats=unix
set fileencodings=utf8,gb2312,gbk,gb18030
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set nu
"set cursorline
set ruler
"set cursorcolumn

"autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
autocmd BufRead *.as set filetype=actionscript 
autocmd BufRead *.mxml set filetype=mxml 

let g:template_load = 1
let g:template_tags_replacing = 1
let g:T_AUTHOR = "Chen Gang"
let g:T_AUTHOR_WEBSITE = "http://blog.yikuyiku.com"
let g:T_DATE_FORMAT = "%Y-%m-%d"
