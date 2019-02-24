#!/bin/sh

# First, make sure you have the latest MacOS version
# and are logged in to your apple account just in case.
# Complete the readme steps before running this file.

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 8.9.5
nvm alias default 8.9.5

# GIT
brew install git

# NPM GLOBAL PACKAGES
npm install -g serverless
npm install -g svgo

# YARN
brew update
brew install yarn --without-node

# AWSCLI
brew install awscli

# MONGO
brew install mongo

# ATOM
brew cask install atom

# CHROME
brew cask install google-chrome

# FIREFOX
brew cask install firefox

# JETBRAINS TOOLBOX
brew cask install jetbrains-toolbox

# STUDIO 3T
brew cask install studio-3t

# GITHUB DESKTOP
brew cask install github

# DOCKER
brew cask install docker

# ZOOM
brew cask install zoom

# SKYPE
brew cask install skype

# POSTMAN
brew cask install postman

# VIRTUALBOX
brew cask install virtualbox

# VAGRANT
brew cask install vagrant

# BOOM
brew cask install boom

# BETTERTOUCHTOOL
brew cask install bettertouchtool

# SPOTIFY
brew cask install spotify

# HEROKU TOOLBELT
brew install heroku-toolbelt

# SLACK
brew cask install slack

# TERRAFORM
brew install terraform

# JAVA
brew cask install java

# GOLANG
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
brew install go
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# VSCODE
brew cask install visual-studio-code

# VSCODE EXTENSIONS
code --install-extension ms-vscode.Go

# SEQUEL PRO
brew cask install sequel-pro

# ALFRED
brew cask install alfred

# JUMPCUT
brew cask install jumpcut

# MAILPLANE
brew cask install mailplane

# Auto switch node version using avn when possible
npm install -g avn avn-nvm avn-n
avn setup

######## Custom Aliases:
echo "alias gogit='cd ~/Documents/GitHub'" >> ~/.bash_profile
echo "alias stop-ctrs='docker stop \$(docker ps -aq)'"  >> ~/.bash_profile
echo "alias rm-ctrs='docker rm \$(docker ps -aq)'"  >> ~/.bash_profile
echo "alias rm-imgs='docker rmi \$(docker images -a -q)'"  >> ~/.bash_profile
echo "alias python=python3" >> ~/.bash_profile
echo "alias pip=pip3" >> ~/.bash_profile
echo "alias py=python3" >> ~/.bash_profile
echo "alias venv='source env/bin/activate'" >> ~/.bash_profile
echo "alias kill-3000='lsof -ti:3000 | xargs kill'" >> ~/.bash_profile

######## Custom macOS preferences
# Remove dock autohide animation and make it more responsive when you hover over it.
defaults write com.apple.Dock autohide-delay -float 0.01
defaults write com.apple.dock autohide-time-modifier -int 0
# Prevent spaces being rearranged
defaults write com.apple.dock mru-spaces -bool false
# Add "quit" option to Finder
defaults write com.apple.finder QuitMenuItem -bool true
# Only show one application and its windows at a time. Hide all others.
defaults write com.apple.dock single-app -bool true
# Speed up mission control animations
defaults write com.apple.dock expose-animation-duration -float 0.12
# Stop Full Names from Copying with Email Addresses in OS X Mail
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Make Hidden App Icons Translucent in the Dock
defaults write com.apple.Dock showhidden -bool YES
# Make hidden files viewable in finder
defaults write com.apple.finder AppleShowAllFiles -bool YE
# Show system info from login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Disable animations when opening and closing windows.
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# Disable animations when opening a Quick Look window.
defaults write -g QLPanelAnimationDuration -float 0
# Disable Mail animations
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
# Disable animation when opening the Info window in Finder (cmd⌘ + i).
defaults write com.apple.finder DisableAllAnimations -bool true
# Disable animations when you open an application from the Dock.
defaults write com.apple.dock launchanim -bool false

# restart Dock and Finder
killall Dock
killall Finder