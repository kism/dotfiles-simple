# Download all the dotfiles

# Exit the script if there is an error
set -e

# Bash
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.bash_profile >~/.bash_profile
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.bashrc >~/.bashrc
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.inputrc >~/.inputrc

# Tmux
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.tmux.conf >~/.tmux.conf
if [ $EUID -eq 0 ]; then # If this is setting up the root user account, make the tmux bar red
    sed -i 's/green/red/g' ~/.tmux.conf
    sed -i 's/colour10/colour9/g' ~/.tmux.conf
fi

# Vim
curl --silent -L https://raw.githubusercontent.com/kism/dotfiles-simple/master/.vimrc >~/.vimrc

# Htop
mkdir -p ~/.config/htop/
curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/htoprc/.config/htop/htoprc >~/.config/htop/htoprc
