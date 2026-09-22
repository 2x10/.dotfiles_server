rm -rf .src
mkdir -p .src/src
rsync -aL .links/.* .src/src
rm -rf .src/src/.tmux/plugins
rm -rf .src/src/.zsh/plugins
