#############
# ZSH
#############

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# zsh theme ("random": load a random one, echo $RANDOM_THEME to know
# which one loaded)
ZSH_THEME="gallois"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#############
# Aliases
#############

# Interactive mode, prompts a confirmation to prevent accidental overwriting
alias mv="mv -i"

alias rm-prefix="f(){for file in "$1"*; do mv "$file" "${file#$1}"; done; unset -f f;}; f"

alias ll="ls -alh"
alias gs="git status"

#############
# Misc  
#############

# To use, install thefuck following https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# Kill a process using a specific port
# example usage: kill_port 8889
kill_port() {sudo kill -9 $(sudo lsof -t -i:$1)}

# Necessary to maintain colorscheme in tmux
export TERM="screen-256color"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/olamarre/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/olamarre/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/olamarre/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/olamarre/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/olamarre/miniconda3/etc/profile.d/mamba.sh" ]; then
    . "/home/olamarre/miniconda3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<



# ROS & GAZEBO
# Note: these add ROS python paths to sys.path, which confuses pip list
# when using it in a conda environment. Comment them out if not using ROS
source /opt/ros/noetic/setup.zsh
source ~/catkin_ws/devel/setup.zsh

alias kill_gazebo="killall -9 gazebo & killall -9 gzserver & killall -9 gzclient"




# Builds and run a standalone cpp file. Usage: cpprun foo.cpp
cpprun () {
    filename="${1%.*}"
    g++ -o $filename.out $1 && ./$filename.out 
    rm $filename.out
}
source ~/.autoenv/activate.sh
