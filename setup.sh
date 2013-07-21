#!/bin/bash
# Simple setup.sh for configuring Ubuntu 13.04
# for headless setup. for my personal Linux computer



# Install git
sudo apt-get install -y git-core

# Install apache2 server
sudo apt-get install -y apache2

# Install guake terinal
sudo apt-get install -y guake

# Install geany

sudo apt-get install -y geany

# Install Minicom
sudo apt-get install -y minicom

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap


# Install screenlets
# Widget like aplication
sudo apt-get install -y screenlets
# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg



cd $HOME
# Make dotfiles dir in setup directory

sudo mkdir /setup/dotfiles



#if [ -d ./dotfiles/ ]; then
#    mv dotfiles dotfiles.old
#fi
#if [ -d .emacs.d/ ]; then
#    mv .emacs.d .emacs.d~
#fi


#ln -sb setup/dotfiles/.screenrc .
#ln -sb setup/dotfiles/.bash_profile .
#ln -sb setup/dotfiles/.bashrc .
#ln -sb setup/dotfiles/.bashrc_custom .
#ln -sf setup/dotfiles/.emacs.d .

