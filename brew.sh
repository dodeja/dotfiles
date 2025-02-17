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

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
# brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
brew install ssh-copy-id
# brew install tree
# brew install vbindiff
# brew install zopfli

# Oh My ZSH
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

# Dev Tools
brew install rbenv rbenv-gem-rehash ruby-build
rbenv install 2.6.3
rbenv global 2.6.3
gem update --system
gem install bundler

brew install redis
# brew install postgres
brew install node
# brew tap thoughtbot/formulae
# brew install rcm
# brew install legit
brew install heroku-toolbelt

#  Brew Cask fro Apps
brew install caskroom/cask/brew-cask
brew cask install google-chrome


# Remove outdated versions from the cellar.
brew cask install dropbox
# brew cask install google-chrome
# brew cask install google-drive
# brew cask install google-hangouts
# brew cask install flux
brew cask install onepassword
# brew cask install pdftk
brew cask install shiftit
# brew cask install superduper
# brew cask install totalfinder
# brew cask install transmission
# brew cask install valentina-studio
brew cask install vlc
brew cask install rubymine
brew cask install slack
brew cask install spotify
brew cask install postgres
brew cask install iterm2
brew cask install visual-studio-code
brew cask install zoomus
brew cask install keybase
brew cask install insomnia
brew cask install notion
brew cask install superhuman
brew cask install sketch
brew cask install adobe-creative-cloud
brew cleanup










