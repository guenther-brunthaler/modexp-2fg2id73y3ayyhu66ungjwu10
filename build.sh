#! /bin/sh
outdir=master
set -e
trap '$? = 0 || echo "$0 failed!" >& 2' 0
while getopts o: opt
do
	case $opt in
		o) outdir=$OPTARG;;
		*) false || exit
	esac
done
mkdir -p -- "$outdir"
exec source_level_linker/unit_linker -o "$outdir" -M '' -L `
	printf %s lib
	for l in .submods/*
	do
		printf ':%s' "${l##*/}"
	done
` *.order
