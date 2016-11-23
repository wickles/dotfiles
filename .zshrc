#!/bin/zsh
##pragma once
export __ZSHRC__="true"
#unset __BASHRC__
unset BASH

if [[ $- == *i* ]]; then
	source $HOME/.zprofile
fi

##pragma once
unset __ZSHRC__
