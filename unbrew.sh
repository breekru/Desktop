#!/bin/sh

brew untap caskroom/versions
brew uninstall brew-cask

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"