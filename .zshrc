#!/bin/zsh
# setup config profiling
export __ZSHRC__="true"
#unset __BASHRC__
unset __BASH_PROFILE__
unset BASH

if [ -z "$__PROFILE__" ]; then
    source ~/.profile
fi

# source additional config files if they exist
for file in ~/.zsh_prompt; do
	source_if $file;
done;
unset file;

if [ -z "$__ZSH_PROFILE__" ]; then
    source ~/.zsh_profile
fi

unset __ZSHRC__
