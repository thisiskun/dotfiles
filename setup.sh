#!/bin/bash

# if the file is a symbol link, delete it and make a new symbol link
# else if the file is a regular file, mv file file.origin

slink () {
	filename=$1
	home_file="${HOME}/${filename}"
	current_file="$(pwd)/${filename}"
	if [ -e "$home_file" ]; then
		if [ -L "$home_file" ]; then
			rm "$home_file"
		else
			mv "$home_file" "${home_file}.origin"
		fi
	fi
	ln -s $current_file $home_file
}

# get the hidden files under current directory

files=$(find \( -name '.[!.]?*' \) -not \( -name '.git' \) -exec basename '{}' ';')

for f in $files; do
	slink $f
done
