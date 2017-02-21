#!/bin/bash
# bash barebones configuration
# This file is sourced in interactive non-login shells, and generally in
#  remote command shells.
# DO NOT print to stdout unless in interactive shell.
# If needed, source .bash_profile after checking for interactive shell.

##pragma once
if [ -n "$__BASHRC" ]; then return; fi
export __BASHRC="true"

function source_if () {
	for file in "$@"; do
		#echo "sourcing $file ..."
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

if [[ $- == *i* ]]; then
	#echo "executing .bashrc ..."
	source_if $HOME/.bash_profile
fi

##pragma once
unset __BASHRC
