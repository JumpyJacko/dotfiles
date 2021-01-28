# ~/.config/fish/config.fish

### EXPORT ###
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
set fish_greeting                      # Supresses fish's intro message
set TERM "xterm-256color"              # Sets the terminal type
set EDITOR "vim"                       # $EDITOR use Emacs in terminal
set VISUAL "emacsclient -c -a emacs"   # $VISUAL use Emacs in GUI mode

# Replace system commands with custom commands
alias ls='exa -la --git --group-directories-first'

# Commit dotfiles to my dotfile git repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Aliases for convenience
alias e='$EDITOR'
alias p='sudo pacman'

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Starship prompt
starship init fish | source
