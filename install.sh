#!/bin/bash

# Update package list
sudo apt -y update

# Install git
sudo apt install -y git

# Install necessary packages
sudo apt install -y zsh

# Setup ZSH syntax highlighting
sudo apt install -y zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc

# Setup ZSH autosuggestions
sudo apt install -y zsh-autosuggestions
echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc

# Install and configure Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -n

# Setting zsh theme to half-life
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="half-life"/g' ~/.zshrc

# Source the updated .zshrc to apply changes
source $HOME/.zshrc
