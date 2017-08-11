	BEGIN {
		if (ARGC != 4) die("Invalid arguments!")
		vstr2v(x, ARGV[1], $radix)
		vstr2v(n, ARGV[2], $radix)
		vstr2v(mod, ARGV[3], $radix)
		if (vcmp(x, mod) >= 0) {
			die("Base must be smaller than modulus!")
		}
		if (vcmp(n, mod) >= 0) {
			die("Exponent must be smaller than modulus!")
		}
		vmodexp(x, n, mod)
		print v2str(x, $radix)
	}
