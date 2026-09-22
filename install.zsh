#!/bin/zsh

echo -e "installing 2x10's server dotfiles. . .\n"
date

if [[ -f ~/.zshrc ]]; then 
    if [[ -f ~/.zshrc.backup ]]; then
        echo -e "'~/.zshrc.backup' already exists. . . not creating backup; skipping"
    else
        echo -n "creating backup of old .zshrc. . .   "
        mv -v ~/.zshrc ~/.zshrc.backup
    fi
else
    echo -e "no '~/.zshrc' found."
fi

if [[ -f ~/.zsh/init.zsh ]]; then
    echo -e "'~/.zsh/': user files have already been created. . . skipping"
else
    echo -n "copying user files to '~/.zsh'. . .   "
    cp -rv user.example/* ~/.zsh/
fi

echo -n "copying configurations. . .   "
cp -rv .src/src/.* ~

echo -e "installing external plugins. . ."

echo -n "installing fzf. . .   "
git clone https://github.com/junegunn/fzf ~/.zsh/plugins/fzf
~/.zsh/plugins/fzf/install --bin

echo -n "installing zsh-autosuggestions. . .   "
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions

echo -n "installing tmux plugin manager. . .   "
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo -n "installing treemux. . .   "
git clone https://github.com/kiyoon/treemux ~/.tmux/plugins/treemux

echo -e "successfully installed server dotfiles"

