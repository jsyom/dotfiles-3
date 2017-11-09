# reload zsh config
alias reload!='source ~/.zshrc'

# standard terminal commmands
alias cl='clear'
alias l='ls -aFG'
alias lh='ls -aFG'
# Switch vim to neovim
# alias v="nvim"
# alias vim="vim"
alias ":q"="exit"
alias mkdir='mkdir -p'
alias dot='cd $DOTFILES'
alias root='cd $(git rev-parse --show-cdup)'
alias path="echo $PATH | tr -s ':' '\n'"
alias finder='open -a Finder .'
alias textedit='open -a TextEdit'
alias hi='echo $(whoami)'

# if there is neovim then use it and alias it
if type nvim > /dev/null 2>&1; then
  # alias nv='nvim'
  alias v='nvim'
fi

# UDEMY-DL
alias udemy='udemy-dl -o ~/Downloads/Udemy -u dkinsk@gmail.com -p beesbees'
# Youtube-dl
# MP3
alias ytmp3='youtube-dl --output "%(title)s.%(ext)s" --extract-audio --audio-format mp3 --audio-quality 0'
# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias tks='tmux kill-session -t'
# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Show/Hide finder hidden files
alias showHidden="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideHidden="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# # Start meteor with settings
# alias meteors="meteor --settings ./config/settings.json"

# File size
alias fs="stat -f \"%z bytes\""

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# kill a rogue process running on a specific port
# usage: `killp 3000`
killp() { lsof -n "-i4TCP:${1:-3002}" | grep LISTEN | tr -s ' ' | cut -f 2 -d ' ' | xargs kill -9}

# Kill all the tabs in Chrome to free up memory
alias killchrome="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

