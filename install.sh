#/bin/zsh

echo -e "installing dotfiles. . ."

if [ -f "~/.zuser" ]; then
    cp ".zuser" "~/.zuser"
else
    echo -e "'~/.zuser' already exists. . . skipping"
fi

cp -r .src/src/.* ~ 

echo -e "successfully installed server dotfiles"

