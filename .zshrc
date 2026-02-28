export ZSH="$HOME/.oh-my-zsh"
export GDK_BACKEND=wayland
export ANDROID_HOME="/opt/android-sdk"

ZSH_THEME="my_eastwood"

plugins=(git uv)

source $ZSH/oh-my-zsh.sh

### APPS ###
alias ls='lsd'
alias hx='helix'
alias zed="zeditor"
alias matrix="tmatrix --background=default -s 60 --fall-speed=0.1,0.2 --title='D E C I S I V E S T R I K E'"
alias pipes="pipes.sh"

### COMMANDS ###
alias reload-waybar="killall -SIGUSR2 waybar"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias large-files="du -ahx . | sort -rh | head -n20"
alias gpu-temp="nvidia-smi --query-gpu=temperature.gpu --format=noheader"

# bun completions
[ -s "/home/inqlog/.bun/_bun" ] && source "/home/inqlog/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"
