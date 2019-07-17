call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'

call plug#end()

set fileencodings=utf-8,gb18030 "设置文件编码，避免乱码
set nu	"行号
set shortmess=atl	"隐藏启动时的捐赠信息
syntax on	"开启语法高亮
filetype on     "文件类型检测

"tab 键设置
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoindent "自动对齐
set hlsearch    "搜索匹配项高亮

