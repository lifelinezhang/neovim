"                         <----  插件管理  ---->
call plug#begin('~/.local/share/nvim/plugs')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'fholgado/minibufexpl.vim'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
call plug#end()
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"startify
let g:startify_bookmarks=[
    \ '/home/lifeline/.config/nvim/init.vim',
    \]
"minibugexpl
nmap <F6> :MBEOpen<CR>
nmap <F8> :MBEClose<CR>
"tagbar
let g:tagbar_width=30
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_show_visibility=0
let g:tagbar_show_linenumbers=2
nmap <F5> :TagbarToggle<CR>
"nerdtree
let NERDTreeWinPos='left'
let NERDTreeWinSizw=30
nmap <F7> :NERDTreeToggle<CR>
"airline
let g:airline#extensions#tabline#enables=1
let g:airline#extensions#tabline#buffer_nr_show=1
"ctrlp
let g:ctrlp_by_filename=1











let g:python3_host_prog="/usr/bin/python3"
set nu
set noswapfile
nmap <F2> <ESC>:source $MYVIMRC<Cr>
nmap <C-tab> :bn<Cr>
nmap <C-q>   :bp<CR>
colorscheme morning
set fileencodings=utf-8,gbk,chinese
language message zh_CN.utf-8
syntax on
set showcmd
set relativenumber
set nocompatible
set hlsearch
set incsearch
set cursorline
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>


"                         <----  复制粘贴  ---->
nmap <C-c> "+yaw
nmap <C-v> "+p
nmap <C-s> :w<CR><ESC>
vmap <C-c> "+y<ESC>
imap <C-c> <ESC>"+yawi
imap <C-v> <ESC>"+pa
imap <C-s> <ESC>:w<CR><ESC>
