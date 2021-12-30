#!/bin/sh

# Install Brew and install the Brew formulae contained in the Brewfile
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [ $? -eq 0 ]; then
    brew bundle install --file ./Brewfile
else
    echo "Brew installation failed, retry manually."
fi

# Restores the dotfiles
git clone --bare . $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

# Creates Brewfile auto-backup
crontab -l > crontab_tmp
echo "@reboot $HOME/.scripts/brew-bundle.sh" >> crontab_tmp
crontab crontab_tmp
rm crontab_tmp

echo "Script successfully run."
