# kism/dotfiles-simple

## Install

Should work on everything

    curl --silent https://raw.githubusercontent.com/kism/dotfiles-simple/master/setup.sh | bash && . ~/.bashrc

## Generate Terminal Pastable Version

    ```bash
    ./generate.sh
    ```

## Basic packages I think i'll always need

### Debian

    apt-get install wget curl htop vim iotop nload tmux tar which file

### Oracle Linux

    dnf install epel-release
    dnf install wget curl htop vim iotop nload tmux tar which file
