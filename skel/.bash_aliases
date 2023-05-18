# General
alias clear="printf '\033c'" # faster than ncurses clear by a lot
alias c='clear'
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
# LS
alias ls='ls --color=auto -FAh'
alias ll='ls -l'
alias la='ls'
alias l.='ls | egrep "^\."'
alias l=ls
# GREP
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# GIT
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias lc='fc -nl $HISTCMD'
# CADDY
alias rc='caddy reload --config ~/Caddyfile'
alias ft='caddy fmt --overwrite ~/Caddyfile'
alias vt='caddy validate --config ~/Caddyfile'
# Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
# Readability
alias cp="cp -iv"
alias mv='mv -iv'
alias rm='rm -iv'
alias df='df -h'
alias free='free -m'
alias mkdir='mkdir -pv'
