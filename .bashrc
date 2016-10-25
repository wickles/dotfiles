# setup config profiling
export __BASHRC__="true"
#unset __ZSHRC__
unset ZSH

if [ -z "$__PROFILE__" ]; then
    source ~/.profile
fi

if [ -z "$__BASH_PROFILE__" ]; then
    source ~/.bash_profile
fi

unset __BASHRC__

# old bash config deleted in favor of bash-it. see backups if curious. 
