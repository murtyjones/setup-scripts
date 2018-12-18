# Useful aliases
alias gogit='cd ~/Documents/GitHub'
alias stop-ctrs='docker stop $(docker ps -aq)'
alias rm-ctrs='docker rm $(docker ps -aq)'
alias rm-imgs='docker rmi $(docker images -a -q)'
alias python=python3
alias pip=pip3
alias py=python3
alias venv='source env/bin/activate'
alias kill-3000='lsof -ti:3000 | xargs kill'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RVM
source /Users/murtyjones/.rvm/scripts/rvm
