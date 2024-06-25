# 
# Luis Medina ZSH profile
# 

# Profile
PS1="%n@%m %~ %# "
RPROMPT="%*"

# Enable color support
autoload -U colors
colors

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

# Emacs-style keybindings
# bindkey -e

# zsh-syntax-highlighting
# Mac OS X / Homebrew: brew install zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load additional plugins if needed
# Example: plugins=(git)

# Custom paths
export PATH="/usr/local/bin:$PATH"

# Essentials
# ack
# https://beyondgrep.com/

# ack.vim
# https://github.com/mileszs/ack.vim

# bat
# https://github.com/sharkdp/bat

# (Optional) More plugins, tools, themes, etc.
# https://github.com/alebcay/awesome-shell

# Tmux
# https://github.com/tmux/tmux/wiki
# https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
