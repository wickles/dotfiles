#!/bin/zsh
# zsh interactive login configuration
# This file is sourced in interactive login mode, after .zshenv and before .zshrc

##pragma once
if [ -n "$__ZPROFILE" ]; then return; fi
export __ZPROFILE="true"
#echo "executing .zprofile ..."

function source_if () {
	for file in "$@"; do
		#echo "sourcing $file ..."
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

#source_if $HOME/.zshrc

##pragma once
unset __ZPROFILE
