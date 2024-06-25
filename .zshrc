# 
# Luis Medina ZSH profile
# 

# Profile
PS1="%n@%m %~ %# "
RPROMPT="%*"

# Enable color support
autoload -U colors
colors

# ZSH Theme
# ZSH_THEME="robbyrussell"

# Set editor
export EDITOR="vim"

# History settings
# No duplicate history when reverse-searching my commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# zsh-syntax-highlighting
# Mac OS X / Homebrew: brew install zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load additional plugins if needed
# Example: plugins=(git)

# PATH
export PATH="/usr/local/bin:$PATH"

# Essentials
# fzf
# https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline' 

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --style=numbers --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)' --bind shift-up:preview-page-up,shift-down:preview-page-down"

# A simple, fast and user-friendly alternative to find.
# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# # Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    ls)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

# fh() {
#   eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
# }

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

# ack
# https://beyondgrep.com/

# ack.vim
# https://github.com/mileszs/ack.vim

# bat
# https://github.com/sharkdp/bat

# forgit
# https://github.com/wfxr/forgit

# (Optional) More plugins, tools, themes, etc.
# https://github.com/alebcay/awesome-shell

# Tmux
# https://github.com/tmux/tmux/wiki
# https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/

# Common alias
# alias python='/usr/local/bin/python3'
