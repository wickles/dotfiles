# setup config profiling
export __BASHRC__="true"
#unset __ZSHRC__
unset ZSH

if [ -z "$__PROFILE__" ]; then
    source ~/.profile
fi

# source additional config files if they exist
for file in ~/.bash_prompt; do
	source_if $file;
done;
unset file;

if [ -z "$__BASH_PROFILE__" ]; then
    source ~/.bash_profile
fi

unset __BASHRC__
