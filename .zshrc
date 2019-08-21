export PATH="$HOME/.bin:$PATH"
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting alias-tips npm node osx)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

. ~/bin/z.sh