# shell-ambiguous configuration
##pragma once
export __PROFILE__="true"

# Add local directories to the environment paths
export USER_PREFIX="$HOME/local"
export PATH="$USER_PREFIX/sbin:$USER_PREFIX/bin:$PATH"
#export LD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$LD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$DYLD_LIBRARY_PATH"

function source_if () {
	for file in "$@"; do
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
source_if $HOME/.{path,exports,aliases,functions,extra}

##pragma once
unset __PROFILE__
