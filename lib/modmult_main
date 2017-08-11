	BEGIN {
		if (ARGC < 3) die("Invalid arguments!")
		vstr2v(prd, ARGV[1], radix= $radix)
		vstr2v(mod, ARGV[--ARGC], radix)
		if (vcmp(prd, mod) >= 0) {
			die( \
				"Multiplicand " ARGV[i] " must be smaller" \
				" than modulus " ARGV[ARGC] "!" \
			)
		}
		for (i= 2; i < ARGC; ++i) {
			vstr2v(mtr, ARGV[i], radix)
			if (vcmp(mtr, mod) >= 0) {
				die( \
					"Multiplicator " ARGV[i] " must be" \
					" smaller than modulus" \
					" " ARGV[ARGC] "!" \
				)
			}
			vmodmult(prd, mtr, mod)
		}
		print v2str(prd, radix)
	}
