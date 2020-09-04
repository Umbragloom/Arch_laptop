#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al --color=auto'
PS1='[\u@\h \W]\$ '

alias xd='xrdb ~/.Xresources'
alias br='source ~/.bashrc'
alias fuk='clear'
alias exit='sh ~/seeyouspacecowboy.sh; sleep 4; exit'
alias ps='neofetch && scrot -t 20 -d 5'
alias gb='sh seeyouspacecowboy.sh'
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
