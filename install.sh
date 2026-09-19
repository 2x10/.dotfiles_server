#/bin/zsh

echo -e "installing dotfiles. . ."

if [ -f "~/.zuser" ]; then
    cp ".zuser" "~/.zuser"
else
    echo -e "'~/.zuser' already exists. . . skipping"
fi

cp -r .src/src/.* ~ 

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/kiyoon/treemux ~/.tmux/plugins/treemux

echo -e "successfully installed server dotfiles"

