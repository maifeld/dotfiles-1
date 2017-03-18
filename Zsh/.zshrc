# The following lines were added by compinstall
zstyle :compinstall filename '/home/pat/.zshrc'

# Add ~/.bin to the $PATH
export PATH=~/.bin/:$PATH

autoload -Uz compinit promptinit
compinit
promptinit
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Gives vi bindings to terminal
bindkey -v

# For autocompletion with an arrow-key driven interface
# To activate the menu, press tab twice.
zstyle ':completion:*' menu select

# The following enables history search.
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search


# Self made alias'
alias rm="rm -i"
alias mv="mv -i"


# Get antigen
source ~/.antigen.zsh
antigen use oh-my-zsh


# Get a theme
autoload -U colors && colors
setopt promptsubst
antigen theme miloshadzic

# Git
antigen bundle git

# Git-flow
antigen bundle git-flow

# Python bundles 
antigen bundle python
antigen bundle pip
antigen bundle virtualenv 

# give syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# End of antigen
antigen apply
