#/usr/bin/zsh

#
# Z-Shell config by 2x10
#

# - - - completion - - -
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# - - - history - - -
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.history

# - - - prompt - - -
export NEWLINE=$'\n'
PS1="%f%n@%m %~ $ "
if [[ "$TERM" == "linux" ]]; then
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4,bold'

	alias ls='ls'
	alias la='ls -a'
	alias ll='ls -lah'

	PS1="${ttycol1}[%n${ttycol2}@%m${ttycol1}] [${ttycol2}%~${ttycol1}] %f$ "
else
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'

	alias ls='lsd'
	alias la='lsd -a'
	alias ll='lsd -lah'

	PS1="${col1}╔[%n${col2}@%m${col1}] [${col2}%~${col1}] $(format_git_branch)${NEWLINE}╙ %f󰏩 "
fi

# - - - fuzzy search (fzf) integration - - -
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# - - - optimizations - - -
setopt AUTO_CD
#setopt CORRECT

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

# - - - keybinds - - -
bindkey '^[q' toggle_tmux
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
autoload -U select-word-style
select-word-style bash

# - - - aliasses - - -
alias fetch="clear && fastfetch"
alias spotx="bash <(curl -sSL https://raw.githubusercontent.com/SpotX-Official/SpotX-Bash/main/spotx.sh)"
alias start="start-hyprland"
alias convert="magick"
alias update="~/Scripts/system-maintenance.sh"
alias grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias wifi="nmcli device status"
alias gettty="tty | sed 's:/dev/::'"
alias art='~/Scripts/art.sh'
alias matrix='unimatrix -c blue -l=sSn'
alias bonsai='cbonsai --color=00,200,201,199 -i -l --life=40'
alias grep='grep --color=auto'
#alias ssh="kitten ssh"
alias lain="~/Scripts/lain.sh"
alias rbar="~/.config/waybar/build.sh"
alias lock="loginctl lock-session"
alias logout="hyprctl dispatch exit"
alias pipes="pipes.sh"
alias shutdown="sudo openrc-shutdown -p 0"
alias reboot="sudo reboot"
alias pi="~/Scripts/fw-pi.sh"
alias fw-pi="pi"
alias i2p="pi"
alias void="~/Scripts/fw-void.sh"
alias voidence="void"
alias voidence-root="void"
alias bashtop="btop"
alias sky="askyy"
alias cubic="ocp"
alias wine-d2d1="/opt/wine-d2d1/bin/wine"
#alias gpufreq="watch -n1 "grep \"cpu MHz\" /proc/cpuinfo | head"
#alias gpupow="nvidia-smi --query-gpu=clocks.gr,clocks.mem,pstate,power.draw,utilization.gpu --format=csv -l 1"
alias killwine="~/Scripts/kwin.sh"
alias killwin="killwine"
alias kwin="killwine"
alias online="sudo ip link set eth0 up"
alias offline="sudo ip link set eth0 down"
alias netmount="mount -a -t nfs,cifs"
alias yabridge="yabridgectl"
# - - - wineprefixes - - -
alias FL="WINEPREFIX=/home/poison/.local/share/wineprefixes/FL"
alias game="WINEPREFIX=/home/poison/.local/share/wineprefixes/gaming"
alias netstat="ss"
alias nano="nvim"
alias vim="nvim"
alias vi="vim"

# - - - node version manager - - -
source /usr/share/nvm/init-nvm.sh
