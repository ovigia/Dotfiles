#                    __ _ _
#   _ __  _ __ ___  / _(_) | ___
#  | '_ \| '__/ _ \| |_| | |/ _ \
#  | |_) | | | (_) |  _| | |  __/
#  | .__/|_|  \___/|_| |_|_|\___|
#  |_|

export PATH=$HOME/.scripts:$PATH

# Less pager colors
export LESS_TERMCAP_mb=$(tput setaf 4)
export LESS_TERMCAP_md=$(tput setaf 4)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_se=$(tput sgr0)
export LESS_TERMCAP_so=$(tput setab 4 && tput setaf 0)
export LESS_TERMCAP_ue=$(tput sgr0)
export LESS_TERMCAP_us=$(tput setaf 2)

# Fzf
export FZF_DEFAULT_OPTS='
--color fg:#D8DEE9,hl:#84a0c6,fg+:#D8DEE9,bg+:#22262e,hl+:#e2a478
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
--height 96%
--reverse
--preview "[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --style=numbers --color=always {} ||
                  highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null | head -500"
'
# --color fg:#007700,bg:#000000,hl:#00bb00,fg+:#007700,bg+:#002200,hl+:#00bb00
# --color info:#00bb00,prompt:#00bb00,spinner:#00bb00,pointer:#00bb00,marker:#00bb00
# --height 96% --reverse --preview "cat {}"
export FZF_DEFAULT_COMMAND="find ."
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_OPTS='--preview-window=:0%'
export FZF_CTRL_R_OPTS='--preview-window=:0%'
export FZF_ALT_C_COMMAND='find . -type d'

# History
export HISTSIZE=1000
export SAVEHIST=1000

# Export
export EDITOR=nvim
export VISUAL=nvim
export BROWSER="firefox"
export TERMINAL="termite"
#export TERM="xterm-256color"

# Sudo prompt
export SUDO_PROMPT="$(printf "\033[1;36m")[sudo]$(printf "\033[0m") password for %p: "

[ "$(tty)" = "/dev/tty1" ] && exec startx
