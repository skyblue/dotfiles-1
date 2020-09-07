#------------------------------
# Functions
#------------------------------
function cd_up() {
    BUFFER="cd .."
    zle accept-line
}
zle -N cd_up
bindkey '^k' cd_up                                              # cd ..

function ll_current() {
    BUFFER="ll"
    zle accept-line
}
zle -N ll_current
bindkey '^j' ll_current                                         # ll

function git_root() {
    BUFFER="cd $(git rev-parse --show-toplevel || echo ".")"
    zle accept-line
}
zle -N git_root
bindkey '^h' git_root                                           # git root

function git_prepare() {
    if [ -n "$BUFFER" ];
    then
        BUFFER="git add -A && git commit -m \"$BUFFER\" && git push"
    fi
    if [ -z "$BUFFER" ];
    then
        BUFFER="git add -A && git commit -v && git push"
    fi
    zle accept-line
}
zle -N git_prepare
bindkey '^g' git_prepare                                        # git add, commit, push

# color-ssh is a custom function to change the background color of the terminal
# based on the ssh connection, source: https://bryangilbert.com/post/etc/term/dynamic-ssh-terminal-background-colors/
color-ssh() {
    trap "colorterm.sh" INT EXIT
    if [[ "$*" =~ "prod" ]]; then
        colorterm.sh prod
    elif [[ "$*" =~ "dev" ]]; then
        colorterm.sh dev
    else
        colorterm.sh other
    fi
    'ssh' $*
}
compdef _ssh color-ssh=ssh
alias ssh=color-ssh                                             # custom ssh function
