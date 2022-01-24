#!/usr/bin/env bash

sudo apt update && sudo apt --yes upgrade
echo "Installing zsh and recommended plugins"
sudo apt --yes install zsh git
chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Setting up basic configuration"
cp wsl-install/dotfiles/.p10k.zsh ~
cp wsl-install/dotfiles/.zshenv ~
cp wsl-install/dotfiles/.zshrc ~

echo "Cleaning up"
sudo rm -rf wsl-install

echo "Please restart Ubuntu by executing 'wsl --shutdown' and reopening"
