# 
# Luis Medina ZSH profile
# 

# Profile
PROMPT='lumedina@arch:%1 %~ %#'

PROMPT="%n$ "
RPROMPT="%*"

# History
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

# Emacs-style keybindings
bindkey -e


# PATH
export PATH="/usr/local/bin:$PATH"
