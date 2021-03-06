BASHRC_INCLUDED=1

if [ -z "${PROFILE_INCLUDED}" -a -s "${HOME}/.profile" ]
then
    . ${HOME}/.profile
fi

if [ -e ${HOME}/.pijulconfig/bash ]
then
    . ${HOME}/.pijulconfig/bash
fi

[ -z "$PS1" ] && return
export PS1='[ \u@\h:\w ]$ '

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8222222" #darkgrey
    echo -en "\e]P1803232" #darkred
    echo -en "\e]P9982b2b" #red
    echo -en "\e]P25b762f" #darkgreen
    echo -en "\e]PA89b83f" #green
    echo -en "\e]P3aa9943" #brown
    echo -en "\e]PBefef60" #yellow
    echo -en "\e]P4324c80" #darkblue
    echo -en "\e]PC2b4f98" #blue
    echo -en "\e]P5706c9a" #darkmagenta
    echo -en "\e]PD826ab1" #magenta
    echo -en "\e]P692b19e" #darkcyan
    echo -en "\e]PEa1cdcd" #cyan
    echo -en "\e]P7ffffff" #lightgrey
    echo -en "\e]PFdedede" #white
    clear #for background artifacting
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
set -o emacs

alias vim=nvim

command -v vg >/dev/null 2>&1 && eval "$(vg eval --shell bash)"

# added by travis gem
[ -f /home/djhaskin987/.travis/travis.sh ] && source /home/djhaskin987/.travis/travis.sh

PATH="/home/djhaskin987/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/djhaskin987/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/djhaskin987/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/djhaskin987/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/djhaskin987/perl5"; export PERL_MM_OPT;
