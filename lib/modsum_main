	BEGIN {
		if (ARGC < 3) die("Invalid arguments!")
		vstr2v(sum, ARGV[1], radix= $radix)
		vstr2v(mod, ARGV[--ARGC], radix)
		if (vcmp(sum, mod) >= 0) {
			die( \
				"Augend " ARGV[1] " must be smaller" \
				" than modulus " ARGV[ARGC] "!" \
			)
		}
		for (i= 2; i < ARGC; ++i) {
			vstr2v(add, ARGV[i], radix)
			if (vcmp(add, mod) >= 0) {
				die( \
					"Addend " ARGV[i] " must be" \
					" smaller than modulus" \
					" " ARGV[ARGC] "!" \
				)
			}
			vmodsum(sum, add, mod)
		}
		print v2str(sum, radix)
	}
