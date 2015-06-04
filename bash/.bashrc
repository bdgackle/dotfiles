#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#pretty solarized ls
eval `dircolors ~/.dircolors.ansi-dark`

# Set bash to vi mode
set -o vi

#why doens't arch provide this? -- I'm probably Doing It Wrong.
alias python="python3"

# Make frequently used commands easier to type
alias vi="vim"
alias c="clear;"

# Quickly move to frequently used directories
alias fogi="cd ~/git/fogi"
alias sched="cd ~/git/fogi/gs_apps/uhf_scheduler"
alias planner="cd ~/git/fogi/noc_apps/communication_planner"

# Commonly used git phrases
alias log="clear; git log --pretty=oneline -35"
alias uberlog="clear; git log --decorate --pretty=oneline --all --graph --abbrev-commit"
alias status="clear; git status"

# Commonly used build phrases
alias build="clear; make clean; make all P=1 -j9"
alias clean="rm -f *.gch; rm -f *.o; rm -f a.out"

# Pacman one-line for listing installed, but not base/base-devel
alias listpac="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)"

# Fix Java because Xilinx is dumb
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NON_REPARENTING
