# Splash Screen
fastfetch

# Set theme, enable corrections
ENABLE_CORRECTION="true"
ZSH_THEME="bira"

# Oh my ZSH Stuff
export ZSH="$HOME/.oh-my-zsh"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/command-not-found.zsh
plugins=(zsh-syntax-highlighting command-not-found)
source $ZSH/oh-my-zsh.sh

# $PATH
export PATH="$HOME/.bun/bin:$PATH"
export PATH=$PATH:/home/ari/.spicetify
export PATH=$PATH:/home/ari/.cargo/bin
export PATH=$PATH:/home/ari/.local/bin
export TESSDATA_PREFIX=/usr/share/tessdata
export GPG_TTY=$(tty)

# Aliases 
alias ls="eza --color=always --git --icons=always --octal-permissions"
alias vim="nvim"
alias cat='bat --theme="Catppuccin Mocha"'
alias code='vscodium'
alias blahaj='display3d /home/ari/.blahaj/blahaj.obj'
alias neofetch='fastfetch'
alias pipes='pipes.sh'


export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#d0d0d0,bg:-1,bg+:-1
  --color=hl:#f38ba8,hl+:#5fd7ff,info:#cba6f7,marker:#f5e0dc
  --color=prompt:#cba6f7,spinner:#f5e0dc,pointer:#f5e0dc,header:#f38ba8
  --color=border:#d0d0d0,label:#aeaeae,query:#d9d9d9
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="$ "
  --marker=">" --pointer=">" --separator="─" --scrollbar="│"'

eval "$(fzf --zsh)"

# bun completions
[ -s "/home/ari/.bun/_bun" ] && source "/home/ari/.bun/_bun" ]

# git stuff
git() {
    if [ "$1" = "status" ]; then
        command git status -sb "${@:2}"
    else
        command git "$@"
    fi
}
