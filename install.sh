#!/bin/bash

# 1. install git
getGit(){
    hash git 
    if [[ $? != 0 ]]; then
        echo "请安装 git 后再尝试运行该脚本"
    fi
    exit 1
}

# 2. install vim-plug
getVimPlug(){
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   if [[ $? != 0 ]]; then
       exit 2
   fi
}

# 3. get .vimrc
getVimrc(){
    git clone https://github.com/dianbanjiu/dotvimrc
    if [[ -e ~/.vimrc ]]; then
        mv ~/.vimrc ~/.vimrc.bak
    fi
    ln -s ./vimrc ~/.vimrc 
}

# 4. install plugin
vim -c "PlugInstall | q | q"

# 5. init ycm
cd ~/.vim/plugged/youcompleteme 
pyhton3 install.py  --go-completer --rust-completer --ts-completer

exit 0 
