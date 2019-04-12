# Github shortcut
alias gogit='cd ~/Documents/GitHub'

# Docker
alias stop-ctrs='docker stop $(docker ps -aq)'
alias rm-ctrs='docker rm $(docker ps -aq)'
alias rm-imgs='docker rmi $(docker images -a -q)'

# Python
alias python=python3
alias pip=pip3 
alias py=python3 
alias venv='source env/bin/activate'

# Go
alias gogo='cd $GOPATH' 

# Terraform
alias tf='terraform'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RVM
source /Users/murtyjones/.rvm/scripts/rvm [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn alias

# Kill process locking port 3000
alias kill-3000='lsof -ti:3000 | xargs kill'


# Rust Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# birb
alias gobirb='cd ~/birb'

# TW
alias gotw='cd ~/tw/app'

# Personal blog
alias gomj='cd ~/murtyjones.github.io'
