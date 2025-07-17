#!/bin/bash

# Install necessary packages
sudo apt install zsh

# Install and configure Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="half-life"/g' ~/.zshrc

# Setup ZSH syntax highlighting
sudo apt install -y zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc

# Setup ZSH autosuggestions
sudo apt install -y zsh-autosuggestions
echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc

source $HOME/.zshrc
