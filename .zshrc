# Variables ###################################################
export NVIM_ENV="wsl"
export ZSH="$HOME/.oh-my-zsh"
export COLORTERM=truecolor
export PATH="$HOME/.local/bin:$PATH"
export LS_COLORS="${LS_COLORS}:di=1;38;5;110"
export USER="azieniuk"
export MAIL="azieniuk@student.42warsaw.pl"
export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
ZSH_THEME="robbyrussell"
plugins=(git)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
###############################################################


# Source files ################################################
source ~/.config/platform.zsh
source $ZSH/oh-my-zsh.sh
###############################################################


# Platform-specific elements ##################################
case "$CUR_PLAT" in
    YOGA)
		alias cfg_sync_push='/home/alexzenny/Programming/misc/cfg_sync.sh push'
		alias cfg_sync_pull='/home/alexzenny/Programming/misc/cfg_sync.sh pull'
		alias n='/home/alexzenny/Programs/Neovim/nvim-linux-x86_64.appimage'
		alias ft='cd ~/Programming/42_common_core'
		#Prompt highlight
		r1=56 g1=219 b1=229 #Left
		r2=58 g2=142 b2=118 #Middle
		r3=152 g3=202 b3=135 #Right
		rbg=1 gbg=14 bbg=52 #Background
        ;;
    WSL)
		alias ft='cd ~/42warsaw/local'
		alias fth='cd ~/42warsaw/home_git'
		alias n='/home/alexzenny-pc/appimages/nvim-linux-x86_64.appimage'
		alias cfg_sync_push='/home/alexzenny-pc/misc/cfg_sync.sh push'
		alias cfg_sync_pull='/home/alexzenny-pc/misc/cfg_sync.sh pull'
		#Prompt highlight
		r1=150 g1=107 b1=157 #Left
		r2=201 g2=134 b2=134 #Middle
		r3=242 g3=184 b3=128 #Right
		rbg=38 gbg=36 bbg=36 #Background
        ;;
    FT)
        alias foo="command-for-42"
        ;;
    *)
        echo "Error! Unknown platform: $CUR_PLAT"
        ;;
esac
###############################################################


# Common aliases ##############################################
alias gitfastsync='git add . && git commit -m "git fast sync" && git push && git status'
alias vall='valgrind --leak-check=full --show-leak-kinds=all -s'
alias wcc='cc -Wall -Wextra -Werror'
alias ncfg='cd ~/.config/nvim'
alias zsrc='source ~/.zshrc'
alias zcfg='n ~/.zshrc'
alias nrm='norminette'
alias py='python3'
alias f8='flake8'
###############################################################


# CD hook #####################################################
autoload -Uz add-zsh-hook
add-zsh-hook chpwd () {
    pwd
    ls -1X
}
###############################################################


# Prompt highlighting #########################################
gradient_text() {
    local text="$1"
    local len=${#text}
    (( len == 0 )) && return
    local i char r g b
    local out=""
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

gradient_userhost() {
    print -n -- "%{\e[38;2;$rbg;$gbg;${bbg}m%}"
    print -n -- "%{\e[48;2;$rbg;$gbg;${bbg}m%} "
    gradient_text "${USER}@${HOST%%.*} "
    print -n -- "%{\e[38;2;$rbg;$gbg;${bbg}m%}%{\e[0m%}"
}
###############################################################


# On shell start ##############################################
setopt PROMPT_SUBST
PROMPT='$(gradient_userhost): '
###############################################################
