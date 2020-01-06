#   _               _
#  | |__   __ _ ___| |__
#  | '_ \ / _` / __| '_ \ 
#  | |_) | (_| \__ \ | | |
#  |_.__/ \__,_|___/_| |_|


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load shell-agnostic configs
source ~/.shellrc

# History file
export HISTFILE=~/.bash_history

# Vim mode
set -o vi

# Bash prompt
if [[ $UID -eq 0 ]]; then
    user_host='\033[1;31m\u@\h \033[0m'
    user_symbol='#'
else
    user_host='\033[1;32m\u@\h \033[0m'
    user_symbol='$'
fi

PS1="╭─${user_host}in \033[1;34m\w\n\033[1;37m╰─${user_symbol}\033[0m "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
