#/bin/sh

echo -e "updating dotfiles. . ."

git fetch origin
git pull
git status

./install.sh
