# General zsh settings
export ZSH="/Users/mario/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git brew macos)
source $ZSH/oh-my-zsh.sh
export LANG=it_IT.UTF-8
export EDITOR='nvim'
export DEFAULT_USER='$USER'

# Change terminal prompt to just username when logged on local machine
prompt_context() {
    if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
    fi
}

# Homebrew package manager
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# TheFuck autocorrect
# eval $(thefuck --alias)

# Alias for Python3
alias python="python3"

# MacTex configuration
export PATH="$PATH:/usr/local/texlive/2020/texmf-dist/doc/man"
export PATH="$PATH:/usr/local/texlive/2020/texmf-dist/doc/info"
export PATH="$PATH:/usr/local/texlive/2020/bin/x86_64-darwin"

# Haskell compiler
# [ -f "/Users/mario/.ghcup/env" ] && source "/Users/mario/.ghcup/env"

# Dotfiles config
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Python 3.10
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

# 256 color terminal test
alias colortest='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'

# Python-compiled Vim for youcompleteme
# alias vim='/opt/homebrew/Cellar/vim/9.0.0150_1/bin/vim'

# Pandoc MD2PDF custom script
alias mdpdf='~/.scripts/pd-pdf.sh'

# clang-14 install through brew
# alias clang="/opt/homebrew/Cellar/llvm/14.0.6_1/bin/clang"

# Neovim alias
alias vim="nvim"
alias v="nvim"

# Obsidian vault shorthand
alias ob="cd /Users/mario/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Vault"
