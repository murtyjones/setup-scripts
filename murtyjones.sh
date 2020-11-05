#!/bin/sh

brew install git
brew install awscli
brew cask install atom
brew cask install google-chrome
brew cask install firefox
brew cask install jetbrains-toolbox
brew cask install github
brew cask install docker
brew cask install zoom
brew cask install postman
brew cask install virtualbox
brew cask install vagrant
brew cask install bettertouchtool
brew cask install spotify
brew install heroku-toolbelt
brew cask install slack
brew install terraform
brew cask install java
brew cask install visual-studio-code
code --install-extension ms-vscode.Go
brew cask install sequel-pro
brew cask install alfred
brew cask install jumpcut
brew cask install mailplane
brew cask install font-fira-code

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
echo "alias ls-hidden='ls -ld .?*'" >> ~/.bash_profile
echo "alias tf='terraform'" >> ~/.bash_profile

# birb
alias gobirb='cd ~/birb'

# martyjon.es
alias gomj='cd ~/martyjon.es'

# Make
alias mk='make'

######## Custom macOS preferences
# Remove dock autohide animation and make it more responsive when you hover over it.
defaults write com.apple.Dock autohide-delay -float 0.01
defaults write com.apple.dock autohide-time-modifier -int 0
# Prevent spaces being rearranged
defaults write com.apple.dock mru-spaces -bool false
# Add "quit" option to Finder
defaults write com.apple.finder QuitMenuItem -bool true
# Only show one application and its windows at a time. Hide all others.
defaults write com.apple.dock single-app -bool false
# Speed up mission control animations
defaults write com.apple.dock expose-animation-duration -float 0.12
# Stop Full Names from Copying with Email Addresses in OS X Mail
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Make Hidden App Icons Translucent in the Dock
defaults write com.apple.Dock showhidden -bool YES
# Make hidden files viewable in finder
defaults write com.apple.finder AppleShowAllFiles -bool YES
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
