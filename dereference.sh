rm -rf .src
mkdir -p .src/src
rsync -aL .links/.* .src/src
rm -rf .src/src/.tmux/plugins/tpm
rm -rf .src/src/.tmux/plugins/treemux
