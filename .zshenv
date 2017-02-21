#!/bin/zsh
# zsh barebones configuration
# This file is sourced in interactive login, interactive non-login, and remote
#  command shells, before .zprofile and .zshrc
# DO NOT print to stdout unless in interactive shell.

##pragma once
if [ -n "$__ZSHENV" ]; then return; fi
export __ZSHENV="true"

function source_if () {
	for file in "$@"; do
		#echo "sourcing $file ..."
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

if [[ $- == *i* ]]; then
	#echo "executing .zshenv ..."
	#source_if $HOME/.zprofile
fi

##pragma once
unset __ZSHENV
