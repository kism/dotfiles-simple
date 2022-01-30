# kism/dotfiles-simple

    git clone https://github.com/kism/dotfiles-simple; yes | mv dotfiles-simple/.* ~ > /dev/null 2> /dev/null; rm -rf dotfiles-simple; . ~/.bashrc

or    

    wget -O - https://github.com/kism/dotfiles-simple/archive/master.tar.gz | tar xz ; yes | mv dotfiles-simple-master/.* ~ > /dev/null 2> /dev/null ; rm -rf dotfiles-simple-master; . ~/.bashrc

or

    curl -L https://github.com/kism/dotfiles-simple/archive/master.tar.gz | tar xz ; yes | mv dotfiles-simple-master/.* ~ > /dev/null 2> /dev/null ; rm -rf dotfiles-simple-master; . ~/.bashrc

### Packages

#### Debian

    apt-get install wget curl htop vim iotop git tmux

#### Oracle Linux

    yum install epel-release
    yum install wget curl htop vim iotop git tmux
