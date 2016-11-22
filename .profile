#!/bin/bash
#### Shell-ambiguous configuration
# shell-specific config loaded at bottom
export __PROFILE__="true"

### 3rd party config

# Add local directories to the environment paths
export USER_PREFIX="$HOME/local"
export PATH="$USER_PREFIX/sbin:$USER_PREFIX/bin:$PATH"
#export LD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$DYLD_LIBRARY_PATH"

source_if () {
	[ -r "$1" ] && [ -f "$1" ] && source "$1";
}
#export -f source_if

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
	source_if $file
done;
unset file;

### Load additional config, where necessary

if [ -n "$BASH" ] && [ -z "$__BASHRC__" ]; then
    source ~/.bashrc
fi

if [ -n "$ZSH" ] && [ -z "$__ZSHRC__" ]; then
    source ~/.zshrc
fi

unset __PROFILE__
