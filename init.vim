"                                     <----  插件管理  ---->
call plug#begin('~/.vim/autoload/plugs')
Plug 'bling/vim-airline'                                                             "状态栏
Plug 'vim-airline/vim-airline-themes'                                                "状态栏主题
Plug 'kien/ctrlp.vim'                                                                "文件查找
Plug 'scrooloose/nerdtree'                                                           "文件目录列表
Plug 'mhinz/vim-startify'                                                            "开始界面
Plug 'majutsushi/tagbar'                                                             "函数列表
Plug 'fholgado/minibufexpl.vim'                                                      "buffer列表
Plug 'neoclide/coc.nvim',{'branch':'release'}                                        "代码补全
call plug#end()
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"                                     <----  插件配置  ---->
"coc
"coc安装的插件
let g:coc_global_extensions = ['coc-tsserver','coc-html',
  \'coc-css', 'coc-json']     
function! s:check_back_space() abort                                                 "tab键选择
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"                               "cr键确认选择
"startify          
"初始页面标签
let g:startify_bookmarks=[    
  \ '/home/lifeline/.config/nvim/init.vim',
  \ '/home/lifeline/.config/nvim/coc-settings.json',
  \]
"minibugexpl
nmap <F6> :MBEOpen<CR>                                                               "开启buffer列表
nmap <F8> :MBEClose<CR>                                                              "关闭buffer列表
"tagbar
let g:tagbar_width=30                                                                "宽度设置
let g:tagbar_sort=0                                                                  "默认排序
let g:tagbar_compact=1                                                               "不显示第一行的帮助信息
let g:tagbar_show_linenumbers=2                                                      "显示行号
nmap <F5> :TagbarToggle<CR>                                                          "开启方法列表
"nerdtree
let NERDTreeWinPos='left'                                                            "左侧显示
let NERDTreeWinSizw=30                                                               "宽度为30
nmap <F7> :NERDTreeToggle<CR>
"airline
let g:airline#extensions#tabline#enables=1                                           "显示buffer
let g:airline#extensions#tabline#buffer_nr_show=1
"ctrlp
let g:ctrlp_by_filename=1                                                            "通过文件名字查找
"                                     <----  普通配置  ---->
let g:python3_host_prog="/usr/bin/python3"                                           "设置python3
set nu                                                                               "显示行号       
set noswapfile                                                                       "不产生swap文件
nmap <F2> <ESC>:source $MYVIMRC<Cr>                                                  "重新加载src文件
nmap <C-tab> :bn<Cr>                                                                 "跳转到上一个buffer
nmap <C-q>   :bp<CR>                                                                 "跳转到下一个buffer
colorscheme morning                                                                  "主题设置
set fileencodings=utf-8,gbk,chinese                                                  "编码格式设置
language message zh_CN.utf-8
syntax on                                                                            "高亮显示
set showcmd                                                                          "右下角显示命令
set relativenumber                                                                   "显示相对位置
set nocompatible                                                                     "不与vi兼容
set hlsearch                                                                         "高亮显示匹配
set incsearch                                                                        "边查找边高亮显示匹配
set cursorline                                                                       "高亮显示行
set cursorcolumn                                                                     "高亮显示列
set softtabstop=0                                                                    "关闭softtabstop 永远不要将空格和tab混合输入
set tabstop=4                                                                        "设置tab键的空格长度
set shiftwidth=4                                                                     "使用 >> << 或 == 来缩进代码的时候补出的空格数
set expandtab                                                                        "tab键输入的永远是空格
set autoindent                                                                       "自动缩进
inoremap ( ()<LEFT>                                                                  "括号匹配
inoremap [ []<LEFT>
inoremap { {}<LEFT>


"                                     <----  复制粘贴  ---->
nmap <C-c> "+yaw
nmap <C-v> "+p
nmap <C-s> :w<CR><ESC>
vmap <C-c> "+y<ESC>
imap <C-c> <ESC>"+yawi
imap <C-v> <ESC>"+pa
imap <C-s> <ESC>:w<CR><ESC>
