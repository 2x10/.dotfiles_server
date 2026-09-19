rm -rf .src
mkdir -p .src/src
rsync -aL .links/.* .src/src
