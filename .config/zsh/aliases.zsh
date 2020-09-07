#------------------------------
# Aliases
#------------------------------
alias cp="cp -i"                                                # Confirm before overwriting something
alias df="df -h"                                                # Human-readable sizes
alias free="free -m"                                            # Show sizes in MB
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"  # Manage dotfiles
alias p="sudo pacman"                                           #
alias v="$EDITOR"                                               #
alias sv="sudo $EDITOR"                                         #
alias r="ranger"                                                #
alias sr="sudo ranger"                                          #
alias y="youtube-dl -i -x --audio-format best"                  # Download musics
alias yd="youtube-dl"                                           # Download videos
alias md="mkdir -p"
alias rd="rmdir"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls --color=auto"                                       # ls
alias ls="ls --color=auto"                                      # ls
alias la="ls -A --color=auto"                                   # ls -A
alias ll="ls -lahF --color=auto --group-directories-first"      # ls -l

alias grep="grep --color=auto"                                  #
alias egrep="egrep --color=auto"                                #
alias fgrep="fgrep --color=auto"                                #

# Git
alias g="git"                                                   # Git
alias ga="git add"                                              #
alias gaa="git add --all"                                          #
alias gp="git push"                                             #
alias gs="git status"                                           #
alias gc="git commit -m"                                        #
alias gpl="git pull"                                            #
alias gd="git diff"                                             #

alias reload="exec ${SHELL} -l"

