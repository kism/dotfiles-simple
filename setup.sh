# Navigate to users home folder
cd ~

# Download the dotfiles package
curl --silent -L https://github.com/kism/dotfiles-simple/archive/master.tar.gz | tar xz

# Copy all the dotfiles
yes | cp -r dotfiles-simple-master/.bash_profile ~
yes | cp -r dotfiles-simple-master/.bashrc ~
yes | cp -r dotfiles-simple-master/.inputrc ~
yes | cp -r dotfiles-simple-master/.tmux.conf ~
yes | cp -r dotfiles-simple-master/.vimrc ~
mkdir -p .config/htop
yes | cp -r dotfiles-simple-master/.config .config/htop/

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
