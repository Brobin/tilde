#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull;

function doIt() {
	rsync --exclude ".git/" --exclude "tilde.sh" --exclude "README.md" \
        --exclude "LICENSE-MIT.txt" --exclude "terminal.png" -avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This will overwrite files in ~/. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
