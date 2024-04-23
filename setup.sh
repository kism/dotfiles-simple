# Copy all the dotfiles
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.bash_profile > ~/.bash_profile
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.bashrc > ~/.bashrc
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.inputrc > ~/.inputrc
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.tmux.conf > ~/.tmux.conf
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.vimrc > ~/.vimrc
mkdir -p ~/.config/htop/
curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/htoprc > ~/.config/htop/htoprc

# If this is setting up the root user account, make the tmux bar red
if [ $EUID -eq 0 ] ; then
    sed -i 's/green/red/g' ~/.tmux.conf
    sed -i 's/colour10/colour9/g' ~/.tmux.conf
fi

echo "Dotfiles setup, exit this shell and start a new one"
