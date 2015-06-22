#!/bin/bash
# Simple setup.sh for configuring Ubuntu 13.04
# for headless setup. for my personal Linux computer



# Install git
sudo apt-get install -y git-core

# Install apache2 server
sudo apt-get install -y apache2

# tools to use userspace software suspend provided by Linux
sudo apt-get install -y uswsusp

# Install guake terinal
sudo apt-get install -y guake

# Install geany

sudo apt-get install -y geany

# Install Minicom
#sudo apt-get install -y minicom

# Install iperf (foe ethernet testing)
sudo apt-get install -y iperf

# install ssh ( for remote login to this machine )
sudo apt-get install -y ssh

# install varius needed packages
sudo apt-get install -y autoconf automake libtool texinfo build-essential xorg-dev libgtk2.0-dev libjpeg-dev libncurses5-dev libgif-dev libtiff-dev libm17n-dev libpng12-dev librsvg2-dev libotf-dev

# clone emacs rep.
#git clone --depth 1 git://git.sv.gnu.org/emacs.git

#cd $HOME/emacs
#$HOME/emacs/./autogen.sh
#$HOME/emacs/./configure

#make $HOME/emacs/bootstrap
#sudo make install


# Install jshint to allow checking of JS code within emacs

# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# ckermit install 
sudo apt-get install -y ckermit

# kde dialog box
sudo apt-get install -y kde-baseapps-bin

# Install screenlets
# Widget like aplication
sudo apt-get install -y screenlets
# Install emacs24
sudo apt-get install -y emacs

# https://launchpad.net/~cassou/+archive/emacs
#sudo apt-add-repository -y ppa:cassou/emacs
#sudo apt-get update
#sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

# Install and configure tftpd server

sudo apt-get install -y tftpd-hpa

sudo mkdir /tftpdboot
sudo cp $HOME/setup/tftpd-hpa /etc/default/tftpd-hpa

cd $HOME/setup
# Make dotfiles dir in setup directory

# Install nfs server
sudo apt-get install -y nfs-kernel-server 
sudo mkdir /export

# Copy kermit configuration files
# kermit.ttyS0.115200 should be with 755 permissions
sudo cp kermit.conf $HOME/
sudo cp kermit.ttyS0.115200 /usr/local/bin

echo " Add the following line"

sudo echo "/export *(rw,sync,no_subtree_check)" >> /etc/exports

sudo service nfs-kernel-server restart



#sudo mkdir /setup/dotfiles



#if [ -d ./dotfiles/ ]; then
#    mv dotfiles dotfiles.old
#fi
#if [ -d .emacs.d/ ]; then
#    mv .emacs.d .emacs.d~
#fi

ln -sb ~/setup/dotFiles/.bashrc ~/.bashrc
ln -sb ~/setup/dotFiles/.emacs.d ~/.emacs.d

#ln -sb setup/dotfiles/.screenrc .
#ln -sb setup/dotfiles/.bash_profile .
#ln -sb setup/dotfiles/.bashrc .
#ln -sb setup/dotfiles/.bashrc_custom .
#ln -sf setup/dotfiles/.emacs.d .

