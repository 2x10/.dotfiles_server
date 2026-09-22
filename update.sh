#/bin/sh

echo -e "updating dotfiles. . .\n"

cd ~/.dotfiles_server && echo -n "$(pwd): updating main repo. . .   " && git fetch origin && git pull
cd ~/.zsh/plugins/fzf && echo -n "$(pwd): updating fzf. . .   " && git fetch origin && git pull
cd ~/.zsh/plugins/zsh-autosuggestions && echo -n "$(pwd): updating zsh-autosuggestions. . .   "  && git fetch origin && git pull
cd ~/.tmux/plugins/tpm && echo -n "$(pwd): updating tmux plugin manager. . .   " && git fetch origin && git pull
cd ~/.tmux/plugins/treemux && echo -n "$(pwd): updating treemux. . .   " && git fetch origin && git pull

