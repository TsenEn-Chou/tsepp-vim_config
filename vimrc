" F1 Help
" F2 File Tree
" F3 Tagbar 列舉出 class, variable
" F4 切換視窗 C_W + 方向鍵 
" F5 python 自動編譯
" F6 Auto Format for python
" F7 Auto Format for c/c++/h

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" tab
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" 自動排版 需要安裝 astyle 才支援 c/c++
let g:python3_host_prog="/path/to/python/executable/"
Plugin 'vim-autoformat/vim-autoformat'

"xml， html 等成對標籤都可以自動補全
Plugin 'docunext/closetag.vim'
let b:closetag_html_style=1

" Func def jump
Plugin 'preservim/tagbar'

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
" ---------------------------------------------------------- 基本配置 -----------------------------------------------------
" 語法辨識
syntax enable
" 啟用依照檔案類型，決定自動縮排樣式的功能
filetype indent on 
" 行數
set number

" 在 vim 中要正常使用 Backspace 鍵刪除字元，確實需要正確設置 backspace 選項的值。
" 在 compatible 模式下，設置backspace=indent，eol，start也能工作，但是被刪除的字元不會立刻顯示為空白，顯示效果不好。
set nocompatible
set backspace=indent,eol,start

" 支援 256 色
set t_Co=256

" 終端機背景色 : dark / light
set background=dark

" 內建風格 ( 縮寫指令 colo )
" 輸入 colorscheme 空一格，再按 Tab 可以依次預覽 : 
" blue / darkblue / default / delek / desert / eldlord
" evening / industry / koehler / morning / murphy / pable
" peachpuff / ron / shine / slate / torte / zollner
colorscheme one

" 搜尋反白
set hlsearch"

" 配置檔案路徑，讓 find 可以搜尋當前目錄的所有子目錄
set path=.,/usr/include,,**

" ts = tabstop
set ts=4 "縮排 4 格

" tab 替換成空格
set expandtab

" 自動縮排 ｜ autoindent / smartindent / cindent
set autoindent " 跟上一行的縮進一致

" VIM 複製到系統剪貼簿
set clipboard=unnamed

