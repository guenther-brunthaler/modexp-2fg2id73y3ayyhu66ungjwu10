
Options:

-b <base>:
   Specify a radix base between 2 and 36 for input/output.
   Defaults to 0 if omitted. The value 0 means automatic input
   radix base detection and a fixed output radix of 10.
-A <awk_cmd>
   Invoke <awk_cmd> internally rather than the default "awk". For
   example, <awk_cmd> could be "busybox awk".
-h: Display this help and exit
-V: Display version information and exit

Automatic input radix base detection:

Without option -b or with option -b0, every argument defaults to
radix base 10 but the following argument prefixes can be used to
override the base individually:

* "0x" and "0X" selects base 16.
* "0o" and "0O" selects base 8.
* "0b" and "0B" selects base 2.
* "0r<base> and "0r<base>:" selects base <base> (<base> itself
  must be specified as a decimal number between 1 and 36)
EOF
}

trap 'test $? = 0 || echo "$0 failed (option -h shows help)!" >& 2' 0
radix=0
awk=awk
while getopts b:A:hV opt
do
	case $opt in
		b)
			expr x"$OPTARG" : x'[1-9][0-9]*$' > /dev/null
			radix=$OPTARG
			;;
		A) awk=$OPTARG;;
		h) exit_help;;
		V) exit_version;;
		*) false || exit
	esac
done
shift `expr $OPTIND - 1 || :`
