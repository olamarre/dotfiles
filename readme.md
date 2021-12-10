# dotfiles

My configuration files. The main branch contains my basic setup under Ubuntu, while other branches are machine- and OS-specific modifications of the main branch.

## Setup

This will setup all the config files using symlinks and back up old ones.

```sh
# Clone the repo in your home directory
cd
git clone git@github.com:olamarre/dotfiles.git && cd ~/dotfiles

# Set up all symlinks & back up config files already existing on the system
chmod +x install.sh
./install.sh
```

All the old dotfiles with a name conflicting with the new dotfiles will be backed up to a `~/old_dotfiles` directory before being overwritten.

