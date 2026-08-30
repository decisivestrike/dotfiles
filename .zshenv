# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Config
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"

# Editor
export EDITOR="helix"
export VISUAL="helix"

# Pager
if command -v bat >/dev/null 2>&1; then
  export MANPAGER="bat -l man -p"
fi

# Bun
export BUN_INSTALL="$HOME/.bun"

# Path
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.lmstudio/bin:$PATH"
export PATH="$HOME/.chameleon/bin:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"