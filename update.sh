#/bin/sh

echo -e "updating dotfiles. . ."

echo -e "updating fzf. . ."
cd ~/.zsh/plugins/fzf && git fetch origin && git pull
echo -e "updating zsh-autosuggestions. . ."
cd ~/.zsh/plugins/zsh-autosuggestions && git fetch origin && git pull
echo -e "updating tmux plugin manager. . ."
cd ~/.tmux/plugins/tpm && git fetch origin && git pull
echo -e "updating treemux. . ."
cd ~/.tmux/plugins/treemux && git fetch origin && git pull

git fetch origin
git pull
git status

