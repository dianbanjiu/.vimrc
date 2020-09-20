""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ________      ________      _________    ___      ___  ___      _____ ______       ________      ________       "
" |\   ___ \    |\   __  \    |\___   ___\ |\  \    /  /||\  \    |\   _ \  _   \    |\   __  \    |\   ____\      "
" \ \  \_|\ \   \ \  \|\  \   \|___ \  \_| \ \  \  /  / /\ \  \   \ \  \\\__\ \  \   \ \  \|\  \   \ \  \___|      "
"  \ \  \ \\ \   \ \  \\\  \       \ \  \   \ \  \/  / /  \ \  \   \ \  \\|__| \  \   \ \   _  _\   \ \  \         "
"   \ \  \_\\ \   \ \  \\\  \       \ \  \   \ \    / /    \ \  \   \ \  \    \ \  \   \ \  \\  \|   \ \  \____    "
"    \ \_______\   \ \_______\       \ \__\   \ \__/ /      \ \__\   \ \__\    \ \__\   \ \__\\ _\    \ \_______\  "
"     \|_______|    \|_______|        \|__|    \|__|/        \|__|    \|__|     \|__|    \|__|\|__|    \|_______|  "
"                                                                                                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""         
" 
" @Author: dianbanjiu
" @Github: https://github.com/dianbanjiu
" @Blog: https://www.dianbanjiu.com
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin managment use vim-plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'    " golang develop plugin
Plug 'vimwiki/vimwiki'    " vim plugin for take notes
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }    " vim plugin for markdown preview
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'    " airline themes,nedd to install vim-airline first
Plug 'valloric/youcompleteme'    " autocomplete plugin
Plug 'joshdick/onedark.vim'    " color scheme
Plug 'preservim/nerdtree'    " side file system explorer

call plug#end()


" Some common config
set fileencodings=utf-8,gb18030,gbk "设置打开文件编码，避免乱码
set encoding=utf-8  "设置文件编码
set nu	"行号
set shortmess=atI	"隐藏启动时的捐赠信息
syntax on	"开启语法高亮
filetype on     "文件类型检测
set nocompatible    "采用 vim 自己的操作命令
set showcmd     "在底部显示当前键入的指令
set mouse=a     "支持使用鼠标
set wrap        "自动折行
set showmatch   "高亮匹配另一个括号
set hidden    " 不保存文件直接切换 buffer
" tab 键设置
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoindent "自动对齐


" markdown config
let g:mkdp_brower = 'chromium'
autocmd Filetype markdown noremap ,m :MarkdownPreview<CR>
autocmd Filetype markdown noremap ,ms :MarkdownPreviewStop<CR>

" airline config && color scheme
colorscheme onedark

" airline config
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1    " enable airline top buffer line
let g:airline#extensions#tabline#formatter = 'unique_tail'
" airline top buffer switch
noremap <Tab><Tab> :bNext<CR>

" ycm config

" nerdtree config
"autocmd vimenter * NERDTree    " open nerdtree when vim start vim
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif    " open nerdtree even no file specified
" press ctrl+e to switch nerdtree status 
nmap <C-e> :call SwitchNerdtreeStatus()<CR>
function SwitchNerdtreeStatus()
    if g:NERDTree.IsOpen()
        :NERDTreeClos
    else
        :NERDTreeFocus
    endif
endfunction
