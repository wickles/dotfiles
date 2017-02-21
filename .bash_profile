#!/bin/bash
# bash interactive configuration
# This file is sourced in interactive login mode. It is NOT sourced in non-login
#  shells, therefore it should be sourced manually from .bashrc after checking
#  for interactive mode.
# It should source .profile manually if needed.
# It should contain your basic bash configuration.

##pragma once
if [ -n "$__BASH_PROFILE" ]; then return; fi
export __BASH_PROFILE="true"
unset ZSH
#echo "executing .bash_profile ..."

function source_if () {
	for file in "$@"; do
		#echo "sourcing $file ..."
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
}

source_if $HOME/.profile
source_if $HOME/.bash_prompt
source_if $HOME/.{aliases,functions}


## BEGIN bash-it configuration

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source_if $BASH_IT/bash_it.sh

## END bash-it configuration


##pragma once
unset __BASH_PROFILE
