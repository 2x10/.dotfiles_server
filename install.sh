#/bin/sh

echo -e "installing dotfiles. . ."

if [ -f "~/.backup.zshrc" ]; then
    cp "~/.zshrc" "~/.backup.zshrc"
else
    echo -e "'~/.backup.zshrc' already exists. . . skipping"
fi

if [ -f "~/.zuser" ]; then
    cp ".zuser" "~/.zuser"
else
    echo -e "'~/.zuser' already exists. . . skipping"
fi

cp src/.* ~/ -r 

echo -e "successfully installed server dotfiles"

