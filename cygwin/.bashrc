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

# Make frequently used commands easier to type
alias vi="vim"
alias c="clear;"

# Frequently used directories
#source .shortcuts
alias snapshot="cd /cygdrive/c/Users/barryga/Desktop/input/controller_framework"
alias d0g="cd /cygdrive/c/Users/barryga/Desktop/input/controller_framework/firmware/src/projects/d0g"
alias platform="cd /cygdrive/c/Users/barryga/Desktop/input/controller_framework/firmware/src/platform/lpc11Uxx"
alias common="cd /cygdrive/c/Users/barryga/Desktop/input/controller_framework/firmware/src/common"
alias firmware="cd /cygdrive/c/Users/barryga/Desktop/input/controller_framework/firmware"
alias run_realtime="/cygdrive/c/Users/barryga/Desktop/input/controller_framework/test_tools/ValveTest/Scripts/d0g_realtime_status.bat"
alias wireless="cd /cygdrive/c/Users/barryga/Desktop/common/firmware/src/wireless/nordic/module/d0g"

# Commonly used git phrases
alias status="clear; git status"
alias log="clear; git log --pretty=oneline -35"
alias uberlog="clear; git log --decorate --pretty=oneline --all --graph --abbrev-commit"

# Run watch command on git log -- sed changes ^[m to ^[0m to work around watch bug
alias watchtree="watch -c -n 3 'git log --oneline --color --graph --decorate --all|sed \"s/\[\x6d/\[\x30\x6d/g\"'"
alias watchstatus="watch -c -n 3 'git -c color.status=always status |sed \"s/\[\x6d/\[\x30\x6d/g\"'"
alias watchlog="watch -c -n 3 'git log --color --pretty=oneline -35| sed \"s/\x1b\[\x6d/\x1b\[\x30\x6d/g\"'"

# Run watch command on a directory
alias watchls="watch -c -n 1 ls --color -1"
alias watchll="watch -c -n 1 ls --color -l"
alias watchlla="watch -c -n 1 ls --color -la"

# Set Cygwin color scheme on login
source ~/.sol.dark
