# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fox"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


bindkey '^N' autosuggest-accept
bindkey -M main '^J' up-line-or-beginning-search      # J = previous command (like up arrow)
bindkey -M main '^K' down-line-or-beginning-search    # I = next command (like down arrow)

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
# fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -la'
# alias lla='ls -la'
alias lt='ls --tree'
alias n='nvim'

eval "$(zoxide init zsh)"


# opencode
export PATH=/home/delawer/.opencode/bin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

