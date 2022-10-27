# curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/setup.sh | bash

DOTFILESURL="https://github.com/kism/dotfiles-simple/archive/master.tar.gz"

cd ~

curl --silent -L $DOTFILESURL

yes | mv dotfiles-simple-master/.* ~ > /dev/null 2> /dev/null

rm -rf dotfiles-simple-master

cd -

. ~/.bashrc
