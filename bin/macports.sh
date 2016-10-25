#!/bin/bash

## Wrap Macports command (any executables installed by Macports).
#macports () {
	if [ "$#" -le 0 ]; then
		echo "Usage: $0 command [arg1, arg2, ...]" >&2
		#return
		exit
	fi

	if [[ -z "$MACPORTS_PREFIX" ]]; then
		MACPORTS_PREFIX='/opt/local'
	fi

	PATH="$MACPORTS_PREFIX/bin:$MACPORTS_PREFIX/sbin:$PATH"
	CPATH="$MACPORTS_PREFIX/include:$CPATH"

	command=$1
	shift
	(exec $command $*)
#}

