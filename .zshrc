export ZSH="$HOME/.oh-my-zsh"
export GDK_BACKEND=wayland
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.lmstudio/bin:$PATH"
export PATH="$HOME/.chameleon/bin:$PATH"

ZSH_THEME="my_eastwood"

plugins=(git uv)

source $ZSH/oh-my-zsh.sh

### APPS ###
alias ff="fastfetch"
alias ls='lsd'
alias hx='helix'
alias zed="zeditor"
alias matrix="tmatrix --background=default -s 60 --fall-speed=0.1,0.2 --title='D E C I S I V E S T R I K E'"
alias pipes="pipes.sh"
alias bonsai="cbonsai"

### COMMANDS ###
alias reload-waybar="killall -SIGUSR2 waybar"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias large-files="du -ahx . | sort -rh | head -n20"
alias gpu-temp="nvidia-smi --query-gpu=temperature.gpu --format=noheader"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

