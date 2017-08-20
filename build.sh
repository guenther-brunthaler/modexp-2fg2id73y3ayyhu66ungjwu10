#! /bin/sh
exec source_level_linker/unit_linker -o master -M '' -L `
	printf %s lib
	for l in .submods/*
	do
		printf ':%s' "${l##*/}"
	done
` *.order
