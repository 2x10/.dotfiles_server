#/bin/zsh

echo -e "installing dotfiles. . ."

if [[ -f ~/.zshrc ]]; then 
    if [[ -f ~/.zshrc.backup ]]; then
        echo -e "'~/.zshrc.backup' already exists. . . not creating backup; skipping"
    else
        cp -v "~/.zshrc" "~/.zshrc.backup"
    fi
fi

if [[ -f ~/.zuser ]]; then
    echo -e "'~/.zuser' already exists. . . skipping"
else
    cp -v "zuser.example" "~/.zuser"
fi

cp -rv .src/src/.* ~ 

git clone https://github.com/junegunn/fzf ~/.zsh/plugins/fzf
~/.zsh/plugins/fzf/install --bin

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/kiyoon/treemux ~/.tmux/plugins/treemux

echo -e "successfully installed server dotfiles"

