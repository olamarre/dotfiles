# dotfiles

Simple configuration files. The main branch contains my basic setup under Ubuntu 20.04. Other machine- and OS-specific configs will eventually be saved in other branches.

## Setup

This will install all the dotfiles files using symlinks and back up old ones.

```sh
# Clone the repo in your home directory
cd
git clone git@github.com:olamarre/dotfiles.git && cd ~/dotfiles

chmod +x install.sh
./install.sh
```

All the old dotfiles (files or symlinks) with a name conflicting with the new ones are backed up to a `~/old_dotfiles` directory.

