#!/bin/bash
#### Shell-ambiguous configuration
# shell-specific config loaded at bottom
export __PROFILE__="true"

### 3rd party config

# Add local bin to the `$PATH`
export LOCAL_HOME="$HOME/local"
export PATH="$LOCAL_HOME/bin:$PATH"

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
