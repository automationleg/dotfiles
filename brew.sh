#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install other useful binaries.
brew install git
brew install tree

# Remove outdated versions from the cellar.
brew cleanup

# install my custom apps
brew install zsh
brew install --cask iterm2
brew install --cask spotify
brew install --cask pycharm
brew install --cask google-chrome
brew install --cask docker
brew install htop
brew install jq
brew install pyenv
brew install bees-hive/hive/pem
brew install xz
brew install python3
brew install direnv
brew install tmux

# install oracle client
brew tap InstantClientTap/instantclient
brew install instantclient-basic
brew install instantclient-sqlplus
