# shell-ambiguous configuration
# This file should contain environment configuration application to ALL shells.
# Tt should only be run ONCE at shell initialization.
# This file will not be called automatically, except on some systems if .bash_profile,
#  .zprofile, etc do not exist. 

##pragma once
if [ -n "$__PROFILE" ]; then return; fi
export __PROFILE="true"
#echo "executing .profile ..."

# Add local directories to the environment paths
export USER_PREFIX="$HOME/local"
export PATH="$USER_PREFIX/sbin:$USER_PREFIX/bin:$PATH"
#export LD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$LD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="$USER_PREFIX/lib64:$USER_PREFIX/lib:$DYLD_LIBRARY_PATH"

function source_if () {
	for file in "$@"; do
		#echo "sourcing $file ..."
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

# Load additional settings ...
#  .path should be used to extend `$PATH`.
#  .exports should be used for miscellaneous exports.
#  .extra should be used for other miscellaneous configuration.
source_if $HOME/.{path,exports,extra}

##pragma once
#unset __PROFILE
