# curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/setup.sh | bash

DOTFILESURL="https://github.com/kism/dotfiles-simple/archive/master.tar.gz"

cd ~

if type curl > /dev/null; then
    wget -O - $DOTFILESURL | tar xz
elif type wget > /dev/null; then
    curl -L https://github.com/kism/dotfiles-simple/archive/master.tar.gz
elif type git > /dev/null; then
    git clone https://github.com/kism/dotfiles-simple
else
  echo oh no
fi

yes | mv dotfiles-simple-master/.* ~ > /dev/null 2> /dev/null

rm -rf dotfiles-simple-master

cd -

. ~/.bashrc
