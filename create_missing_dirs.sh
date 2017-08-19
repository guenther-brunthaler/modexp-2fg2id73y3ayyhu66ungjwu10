#! /bin/sh
for dir in .submods/*
do
	sym=${dir#*/}
	if test -d "$dir" && test ! -e "$sym"
	then
		echo "Creating $sym"
		ln -snf -- "$dir" "$sym"
	fi
done
