# Set up your macOS
1. Open Terminal
2. In terminal, run `xcode-select --install` to install [xcode](https://developer.apple.com/xcode/). You'll have to click through a prompt to complete the installation.
3. Install [Homebrew](https://brew.sh/) via the terminal with this command: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Optionally, if you want Ruby + RVM:
```
# First, prevent RVM adding a crazy amount of documentation.
echo "gem: --no-document" >> ~/.gemrc
# Install RVM + Rails
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
```
5. Restart your terminal, then run:
```
sudo chown $(whoami) ~/.bashrc
sudo chown $(whoami) ~/.profile
bash $(whoami).sh
```
...and wait. You may need to enter your password several times
