my server dotfiles

dependencies: git, nvim, tmux, zsh
optional dependencies: btop, lsd, bat

WARNING: it will replace all of your configurations of nvim, tmux and your z files. it is recommended to just pick some part you like instead of using the installer.
install it using the install.sh script:
```
chmod +x install.sh
./install.sh
```

user-made changes that won't be overwritten go in ~/.zsh/init.zsh, which is sourced by .zshrc for example
that folder also has login.zsh, logout.zsh, profile.zsh and enviroment.zsh which are all sourced by their counterparts in ~/
