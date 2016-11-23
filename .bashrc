#!/bin/bash
##pragma once
export __BASHRC__="true"
#unset __ZSHRC__
unset ZSH

if [[ $- == *i* ]]; then
	source $HOME/.bash_profile
fi

##pragma once
unset __BASHRC__
