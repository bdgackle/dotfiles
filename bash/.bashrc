#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#pretty solarized ls
eval `dircolors ~/.dircolors.ansi-dark`

PATH=$PATH:~/scripts

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
alias status="clear; git status"
alias log="clear; git log --pretty=oneline -35"
alias uberlog="clear; git log --decorate --pretty=oneline --all --graph --abbrev-commit"

# Run watch command on git log -- sed changes ^[m to ^[0m to work around watch bug
alias watchtree="watch -c -n 1 'git log --oneline --color --graph --decorate --all|sed \"s/\[\x6d/\[\x30\x6d/g\"'"
alias watchstatus="watch -c -n 1 'git -c color.status=always status |sed \"s/\[\x6d/\[\x30\x6d/g\"'"
alias watchlog="watch -c -n 1 'git log --color --pretty=oneline -35| sed \"s/\x1b\[\x6d/\x1b\[\x30\x6d/g\"'"

# Run watch command on a directory
alias watchls="watch -c -n 1 ls --color -1"
alias watchll="watch -c -n 1 ls --color -l"
alias watchlla="watch -c -n 1 ls --color -la"

# Commonly used build phrases
alias build="clear; make clean; make all P=1 -j9"
alias clean="rm -f *.gch; rm -f *.o; rm -f a.out"

# Pacman one-line for listing installed, but not base/base-devel
alias listpac="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)"

source .shortcuts

# Fix Java because Xilinx is dumb
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NON_REPARENTING
