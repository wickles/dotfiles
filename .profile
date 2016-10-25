#### Shell-ambiguous configuration
# shell-specific config loaded at bottom
export __PROFILE__="true"

### 3rd party config

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

### Load additional config, where necessary

if [ -n "$BASH" ] && [ -z "$__BASHRC__" ]; then
    source ~/.bashrc
fi

if [ -n "$ZSH" ] && [ -z "$__ZSHRC__" ]; then
    source ~/.zshrc
fi
