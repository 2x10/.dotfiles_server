#/bin/sh

echo -e "updating dotfiles. . ."

cd ~/.zsh/plugins/fzf && git fetch origin && git pull
cd ~/.zsh/plugins/zsh-autosuggestions && git fetch origin && git pull
cd ~/.tmux/plugins/tpm && git fetch origin && git pull
cd ~/.tmux/plugins/treemux && git fetch origin && git pull

git fetch origin
git pull
git status

