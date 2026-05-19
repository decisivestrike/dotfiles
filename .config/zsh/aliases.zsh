# Git
alias gaa='git add --all'
alias gst='git status'
alias gc='git commit --verbose'
alias gp='git push'

# Better ls
alias ls='eza --icons'
alias ll='eza -lh --icons --git'
alias la='eza -ah --icons --git'
alias lla='eza -lah --icons --git'
alias tree='eza --tree --icons'

compdef eza=ls

# Core utils
alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# Shortcuts
alias ff="fastfetch"
alias hx='helix'
alias matrix="tmatrix --background=default -s 60 --fall-speed=0.1,0.2 --title='D E C I S I V E S T R I K E'"
alias pipes="pipes.sh"
alias bonsai="cbonsai"

# Commands
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias large-dirs="du -h / --max-depth=1 2>/dev/null | sort -rh | head -10"
alias gpu-temp="nvidia-smi --query-gpu=temperature.gpu --format=noheader"