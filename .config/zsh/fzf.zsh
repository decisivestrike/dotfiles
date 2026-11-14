export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix'  # strip-cwd-prefix removes the leading ./ from results

# Ctrl-T uses fd
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# UI
export FZF_DEFAULT_OPTS='
  --color=fg:#DCD7BA,bg:#1F1F28,hl:#7E9CD8,fg+:#DCD7BA,bg+:#2A2A37
  --color=hl+:#7E9CD8,info:#7AA89F,prompt:#E6C384,pointer:#957FB8
  --color=marker:#b4a3d0,spinner:#7AA89F,header:#6A9589,border:#54546D
  --color=gutter:#2A2A37
  --highlight-line
  --height=60%
  --layout=reverse
  --border=rounded
  --prompt=""
  --pointer=""
  --scrollbar=""
  --preview-window=right:65%:wrap:border-left
'

export _FZF_PREVIEW_CMD='bat --color=always --style=plain,numbers --line-range=:500 {}'
export FZF_CTRL_T_OPTS="--preview '$_FZF_PREVIEW_CMD'"

# Ctrl+F: file picker excluding hidden files
_fzf_file_no_hidden() {
  local cmd result
  cmd="${FZF_DEFAULT_COMMAND/--hidden /}"
  result=$(eval "${cmd:-find . -type f}" | fzf --preview "$_FZF_PREVIEW_CMD") \
    && LBUFFER+="$result"  # LBUFFER is the text left of the cursor
  zle reset-prompt
}

zle -N _fzf_file_no_hidden