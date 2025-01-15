#!/bin/bash

# region System Setup

# Use ANSI color codes
export TERM=xterm-256color

# Install Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install meslo
# apt install -y git exa

# endregion System Setup

# region Git Setup

cp ./.gitmessage ~
cp ./.gitconfig ~
git config --global commit.template ~/.gitmessage

# endregion Git Setup

#  region Bash Setup

cat bashrc.additions >> ~/.bashrc

#  endregion Bash Setup

#  region Zsh Setup

cat zshrc.additions >> ~/.zshrc

#  endregion Zsh Setup
