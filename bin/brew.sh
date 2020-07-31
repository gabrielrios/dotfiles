#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install zsh
brew install zsh

# Install wget with IRI support
brew install wget --enable-iri

# Install languages manager
brew install asdf

# Install databases
brew install mysql@5.7 postgresql redis

# Install tools
brew install git git-lfs exuberant-ctags heroku httpie
brew install ssh-copy-id ripgrep tmux tig fd
brew install nvim yarn bat aws-cli jq
brew install diff-so-fancy

brew install emacs-plus@27

# TODO: Clone doom-config and install doom-emacs
# TODO: Clone other dotfiles


# Remove outdated versions from the cellar
brew cleanup
