# curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/setup.sh | bash

DOTFILESURL="https://github.com/kism/dotfiles-simple/archive/master.tar.gz"

# Move to users home folder
cd ~

# Download the dotfiles package
curl --silent -L $DOTFILESURL

# Copy all the dotfiles
yes | mv dotfiles-simple-master/.* ~ > /dev/null 2> /dev/null

# Remove the downloaded folder
rm -rf dotfiles-simple-master

# Go back to the folder that the user was in
cd - > /dev/null

# If this is setting up the root user account, make the tmux bar red
if [ $EUID -eq 0 ] ; then
    sed -i 's/green/red/g' ~/.tmux.conf
    sed -i 's/colour10/colour9/g' ~/.tmux.conf
fi

. ~/.bashrc
