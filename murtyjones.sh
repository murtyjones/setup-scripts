#!/bin/sh

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 8.9.5
nvm alias default 8.9.5

# Git
brew install git

# avm packagr – Auto switch node version when possible
npm install -g avn avn-nvm avn-n
avn setup

# Yarn
brew update
brew install yarn --without-node

# AWS CLI
brew install awscli

# Mongo
brew install mongo

# Atom
brew cask install atom

# Google Chrome
brew cask install google-chrome

# Firefox
brew cask install firefox

# JetBrains Toolbox
brew cask install jetbrains-toolbox

# Studio 3T
brew cask install studio-3t

# GitHub Desktop
brew cask install github

# Docker
brew cask install docker

# Zoom
brew cask install zoom

# Skype
brew cask install skype

# Postman
brew cask install postman

# VirtualBox
brew cask install virtualbox

# Vagrant
brew cask install vagrant

# BetterTouchTool
brew cask install bettertouchtool

# Spotify
brew cask install spotify

# Heroku Toolbelt
brew install heroku-toolbelt

# Slack
brew cask install slack

# Terraform
brew install terraform

# Java
brew cask install java

# Golang
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
brew install go
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# VSCode
brew cask install visual-studio-code

# VSCode Extensions
code --install-extension ms-vscode.Go

# Sequel Pro
brew cask install sequel-pro

# Alfred
brew cask install alfred

# Jumpcut
brew cask install jumpcut

# Mailplane
brew cask install mailplane

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
