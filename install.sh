#!/bin/bash
# link files to user directory

# link vim files
if [[ -h ~/.vim ]]; then
    unlink ~/.vim
fi
ln -sf "$PWD/vim" ~/.vim
ln -sf "$PWD/vim/vimrc" ~/.vimrc

# link z.sh files
ln -sf "$PWD/z/z.sh" ~/.z.sh

which zsh
# 安装了zsh
if [[ $0 == 0 ]]; then
    # link zsh files
    ln -sf "$PWD/zsh/zshrc" ~/.zshrc

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh
    # source new zsh profile
    source ~/.zshrc
else
    # link bash files
    ln -sf "$PWD/bash/bash_profile" ~/.bash_profile
    source ~/.bash_profile
fi



