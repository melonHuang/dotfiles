#!/bin/bash
# link files to user directory

# link vim files
if [[ -h ~/.vim ]]; then
    unlink ~/.vim
fi
ln -sf "$PWD/vim" ~/.vim
ln -sf "$PWD/vim/vimrc" ~/.vimrc

# link zsh files
ln -sf "$PWD/zsh/zshrc" ~/.zshrc

# link z.sh files
ln -sf "$PWD/z/z.sh" ~/.z.sh

#git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#chsh -s /bin/zsh
# source new zsh profile
#source ~/.zshrc


