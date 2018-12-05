# Useful aliases
alias gogit='cd ~/Documents/GitHub'
alias stop-ctrs='docker stop $(docker ps -aq)'
alias rm-ctrs='docker rm $(docker ps -aq)'
alias rm-imgs='docker rmi $(docker images -a -q)'
alias python=python3
alias pip=pip3
alias py=python3
alias venv='source env/bin/activate'


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RVM
source /Users/murtyjones/.rvm/scripts/rvm
