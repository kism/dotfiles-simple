# Navigate to users home folder, this was once required, now... who knows
cd ~

# Download the dotfiles package
curl --silent -L https://github.com/kism/dotfiles-simple/archive/master.tar.gz | tar xz

# Copy all the dotfiles
cp --force ./dotfiles-simple-master/.bash_profile ~
cp --force ./dotfiles-simple-master/.bashrc ~
cp --force ./dotfiles-simple-master/.inputrc ~
cp --force ./dotfiles-simple-master/.tmux.conf ~
cp --force ./dotfiles-simple-master/.vimrc ~
mkdir -p .config/htop
cp --force ./dotfiles-simple-master/htoprc ~/.config/htop/

# Remove the downloaded folder
rm -rf dotfiles-simple-master

# If this is setting up the root user account, make the tmux bar red
if [ $EUID -eq 0 ] ; then
    sed -i 's/green/red/g' ~/.tmux.conf
    sed -i 's/colour10/colour9/g' ~/.tmux.conf
fi

# Go back to the folder that the user was in
cd - > /dev/null
. ~/.bashrc
