# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# General zsh settings
export ZSH="/Users/mario/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git brew macos zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export LANG=it_IT.UTF-8
export EDITOR='nvim'
export DEFAULT_USER='$USER'

# Change terminal prompt to just username when logged on local machine
#prompt_context() {
#    if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#        prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#    fi
#}

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
alias ob="cd /Users/mario/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Vault/Università/Anno\ 3/Semestre\ 2"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# MySQL Shell
export PATH=${PATH}:/usr/local/mysql/bin
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Git GPG signing
export GPG_TTY=$(tty)

# CBC library
export PMIP_CBC_LIBRARY="/Users/mario/.cbc/dist/lib/libCbc.dylib"
