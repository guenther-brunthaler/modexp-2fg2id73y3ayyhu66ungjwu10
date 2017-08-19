#! /bin/sh
exec source_level_linker/unit_linker -o master -M '' -L `
	set lib \`
		for l in .submods/*
		do
			printf '%s\n' "${l##*/}"
		done
	\`
	IFS=:
	printf '%s\n' "$*"
` *.order
