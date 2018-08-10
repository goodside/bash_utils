#!/usr/bin/env bash

path_display() {
	echo $PATH | tr : '\n'
}

path_remove() {
	export PATH=$(echo -n $PATH |
		awk -v RS=: -v ORS=: '$0 != "'$1'"' |
		sed 's/:$//' |
		tr -d '\000'
	)
}

path_append() {
	path_remove $1
	export PATH="$PATH:$1"
}

path_prepend() {
	path_remove $1
	export PATH="$1:$PATH"
}