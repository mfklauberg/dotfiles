#!/usr/bin/env bash

# ~/.macos
# based on:
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# https://github.com/kentcdodds/dotfiles/blob/master/.macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Hello $(whoami)! Let's start!"

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing homebrew formulae"
brew install git watchman zsh zsh-completions

# node will come from `n`.
brew install yarn --ignore-dependencies

echo "Installing apps with brew cask"
brew cask install aerial docker firefox google-Chrome \
iterm2 jetbrains-toolbox kap postman slack skype \
skype-for-business spotify spotify-notifications \
telegram-desktop visual-studio-code-insiders whatsapp
