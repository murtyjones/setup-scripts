# Handle auto switching of nvm node version
function title {
    echo -ne "\033]0;"$*"\007"
}

cd() {
  builtin cd "$@" || return
  #echo $PREV_PWD
  if [ "$PWD" != "$PREV_PWD" ]; then
    PREV_PWD="$PWD";
    title $(echo ${PWD##*/}) $(node -v);
    if [ -e ".nvmrc" ]; then
      nvm use;
      # set tab terminal name to be cwd and node version
      title $(echo ${PWD##*/}) $(node -v);
    else
      nvm use default;
    fi
  fi
}


# Useful aliases
alias gogit='cd ~/Documents/GitHub'
alias stop-ctrs='docker stop $(docker ps -aq)'
alias rm-ctrs='docker rm $(docker ps -aq)'
alias rm-imgs='docker rmi $(docker images -a -q)'
alias python=python3
alias pip=pip3
alias py=python3
alias venv='source env/bin/activate'
