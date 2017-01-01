# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# Update PATH variable to access yarn binaries
export PATH="$PATH:`yarn global bin`"
export ZSH=$HOME/.oh-my-zsh

# export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# platform=$(uname)
#
# if [[ $platform == *Darwin* ]];
# then
#   # This makes our PATH visible to GUI apps
#   launchctl setenv PATH $PATH
#
#   # Brew paths over system paths
#   export PATH=/usr/local/bin:/usr/local/sbin:$PATH
#
#   # NPM binaries on PATH as well
#   export PATH=/usr/local/share/npm/bin:$PATH
# fi

# Language Support
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set colors to match iTerm2 Terminal Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-256color
export EDITOR="nvim"
export KEYTIMEOUT=1

# export HOMEBREW_CASK_OPTS="--appdir=~/Applications"


# Load fzf
# export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -f -g "" -u"
export FZF_DEFAULT_COMMAND="ag -g ''"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
