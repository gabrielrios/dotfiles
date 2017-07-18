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

# Install languages
brew install node crystal-lang elm

# Install databases
brew install mysql postgresql redis

# Install tools
brew install git git-lfs exuberant-ctags heroku httpie
brew install macvim ssh-copy-id the_silver_searcher tmux tig
brew install vim yarn


# Install everything else
#brew install agr

# Remove outdated versions from the cellar
brew cleanup
