set nocompatible
filetype off

if has("win32") || has("win64")
	set rtp+=~/vimfiles/vundle.git/ 
	call vundle#rc('~/vimfiles/bundle/')
else
	set rtp+=~/.vim/vundle.git/ 
	call vundle#rc()
endif

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'tpope/vim-fugitive'
Bundle 'rails.vim'
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

"vim-ruby
set nocompatible
filetype on
filetype indent on
filetype plugin on
compiler ruby
let ruby_space_errors=1

let g:neocomplcache_enable_at_startup = 1

imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_snippets_dir = $HOME . '/.vim.bak/snippets'
"let g:neocomplcache_snippets_dir = $HOME . '/snipmate-snippets/'

" Vi互換をオフ
set nocompatible


" 基本設定
syntax on
filetype on
filetype indent on
filetype plugin on


" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch


" 行番号を表示 (number:表示)
set number


" タブをスペースに展開する (noexpandtab:展開しない)
set expandtab


" タブの画面上での幅
set tabstop=2
set softtabstop=2
set shiftwidth=2


" 自動的にインデントする (noautoindent:インデントしない)
"set autoindent
set noautoindent


" F1キーをESCに
map <F1> <Esc>
imap <F1> <Esc>


" カーソルキーを無効に
map <Up> <Nop>
map! <Up> <Nop>
map <Down> <Nop>
map! <Down> <Nop>
map <Left> <Nop>
map! <Left> <Nop>
map <Right> <Nop>
map! <Right> <Nop>


" 挿入モードはCtrlを押しながらで移動できるように
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <up>
inoremap <C-l> <Right>


" 表示行単位で移動
nmap j gj
nmap k gk
vmap j gj
vmap k gk


" ファイルエンコード
set encoding=utf-8
set fileformats=unix
set fileencodings=utf-8,sjis


" 折りたたみ
"set fdm=indent


" スワップファイルを作成しない
set noswapfile


" C-A,C-Xで数字のインクリメント／デクリメントするとき0始まりの数字を8進数と認識しない
set nrformats-=octal


" 全角スペースの可視化
scriptencoding utf-8
highlight ZenkakuSpace cterm=underline ctermbg=white ctermfg=blue
match ZenkakuSpace /　/


" ==============  plugins =================
" yanktmp.vim
map <silent> sy :call YanktmpYank()<CR>
map <silent> sp :call YanktmpPaste_p()<CR>
map <silent> sP :call YanktmpPaste_P()<CR> 


" カラースキーム
if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme default
endif
"set t_Co=256
"colorscheme molokai

au BufRead,BufNewFile *.rb            set filetype=ruby

