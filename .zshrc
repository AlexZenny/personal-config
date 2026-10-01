export NVIM_ENV="wsl"
export ZSH="$HOME/.oh-my-zsh"
export COLORTERM=truecolor
export PATH="$HOME/.local/bin:$PATH"
export LS_COLORS="${LS_COLORS}:di=1;38;5;110"
export USER="azieniuk"
export MAIL="azieniuk@student.42warsaw.pl"
export EDITOR=nvim

alias nvim='~/appimages/nvim-linux-x86_64.appimage'
alias n='nvim'
alias zsrc='source ~/.zshrc'
alias zcfg='nvim ~/.zshrc'
alias ncfg='cd ~/.config/nvim'
alias ft='cd ~/42warsaw/local'
alias fth='cd ~/42warsaw/home_git'
alias wcc='cc -Wall -Wextra -Werror'
alias nrm='norminette'
alias vall='valgrind --leak-check=full --show-leak-kinds=all -s'
alias py='python3'
alias f8='flake8'
alias gitfastsync='git add . && git commit -m "git fast sync" && git push && git status'

ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

cd_hook() {
    if [[ "$PWD" != "$LAST_PWD" ]]; then
        ls -1X
        echo ""
        LAST_PWD="$PWD"
    fi
}

chpwd() {
    cd_hook
}
gradient_text() {
    local text="$1"
    local len=${#text}
    (( len == 0 )) && return

    local i char r g b
    local out=""

    local r1=150 g1=107 b1=157
    local r2=201 g2=134 b2=134
    local r3=242 g3=184 b3=128

    local half=$(( len / 2 ))
    (( half == 0 )) && half=1

    for (( i = 1; i <= len; i++ )); do
        char="${text[i]}"

        if (( i <= half )); then
            local t=$(( (i - 1) * 1000 / half ))
            r=$(( r1 + (r2 - r1) * t / 1000 ))
            g=$(( g1 + (g2 - g1) * t / 1000 ))
            b=$(( b1 + (b2 - b1) * t / 1000 ))
        else
            local denom=$(( len - half ))
            (( denom == 0 )) && denom=1
            local t=$(( (i - half - 1) * 1000 / denom ))
            r=$(( r2 + (r3 - r2) * t / 1000 ))
            g=$(( g2 + (g3 - g2) * t / 1000 ))
            b=$(( b2 + (b3 - b2) * t / 1000 ))
        fi

        out+="%{\e[38;2;${r};${g};${b}m%}${char}"
    done

    out+="%{\e[0m%}"
    print -n -- "$out"
}

setopt PROMPT_SUBST

gradient_userhost() {
    print -n -- "%{\e[38;2;38;36;36m%}"
    print -n -- "%{\e[48;2;38;36;36m%} "
    gradient_text "${USER}@${HOST%%.*} "
    print -n -- "%{\e[38;2;38;36;36m%}%{\e[0m%}"
}

PROMPT='$(gradient_userhost): '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
