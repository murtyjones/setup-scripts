#!/bin/sh

# First, make sure you have the latest MacOS version
# and are logged in to your apple account just in case.

# Next, follow these manual steps

# INSTALL XCODE
# xcode-select --install

# INSTALL HOMEBREW
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# DISABLE RVM INSTALLING A RIDICULOUS AMOUNT OF DOCUMENTATION
# echo "gem: --no-document" >> ~/.gemrc

# RVM + RAILS
# curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails

# RESTART YOUR TERMINAL, then run:
# brew update
# sudo chown murtyjones ~/.bashrc
# sudo chown murtyjones ~/.profile
# `bash mac_setup.sh`
# ...and wait. You may need to enter your password several times

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 8.9.5
nvm alias default 8.9.5

# INSTALL GIT
brew update && brew cask update && brew doctor
brew install git

# NPM GLOBAL PACKAGES
npm install -g serverless
npm install -g svgo

# YARN
brew update
brew install yarn --without-node

# AWSCLI
brew update
brew install awscli

# MONGO
brew update && brew cask update && brew doctor
brew install mongo

# ATOM
brew update && brew cask update && brew doctor
brew cask install atom

# CHROME
brew update && brew cask update && brew doctor
brew cask install google-chrome

# FIREFOX
brew update && brew cask update && brew doctor
brew cask install firefox

# JETBRAINS TOOLBOX
brew update && brew cask update && brew doctor
brew cask install jetbrains-toolbox

# STUDIO 3T
brew update && brew cask update && brew doctor
brew cask install studio-3t

# GITHUB DESKTOP
brew update && brew cask update && brew doctor
brew cask install github

# DOCKER
brew update && brew cask update && brew doctor
brew cask install docker

# ZOOM
brew update && brew cask update && brew doctor
brew cask install zoom

# SKYPE
brew update && brew cask update && brew doctor
brew cask install skype

# POSTMAN
brew update && brew cask update && brew doctor
brew cask install postman

# VIRTUALBOX
brew update && brew cask update && brew doctor
brew cask install virtualbox

# VAGRANT
brew update && brew cask update && brew doctor
brew cask install vagrant

# BOOM
brew update && brew cask update && brew doctor
brew cask install boom

# BOOM
brew update && brew cask update && brew doctor
brew cask install boom   

# BETTERTOUCHTOOL
brew update && brew cask update && brew doctor
brew cask install bettertouchtool

# SPOTIFY
brew update && brew cask update && brew doctor
brew cask install spotify

# HEROKU
brew update && brew cask update && brew doctor
brew install heroku-toolbelt

# SLACK
brew update && brew cask update && brew doctor
brew cask install slack

# neat aliases
echo "alias gogit='cd ~/Documents/GitHub'" >> ~/.bash_profile
