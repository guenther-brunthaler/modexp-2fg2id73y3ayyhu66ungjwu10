	function vstr2v(dst, str, uint_radix_opt    , radix, i, sl, c, a) {
		if (!uint_radix_opt) {
			if (sub("^0[xX]", "", str)) uint_radix_opt= 16
			else if (sub("^0[oO]", "", str)) uint_radix_opt= 8
			else if (sub("^0[bB]", "", str)) uint_radix_opt= 2
			else if (match(str, "^0[rR][1-9][0-9]*:")) {
				uint_radix_opt= substr(str, RSTART, RLENGTH)
				str= substr(str, RSTART + RLENGTH)
				match(uint_radix_opt, "[1-9][0-9]*")
				uint_radix_opt= 0 + substr( \
					uint_radix_opt, RSTART, RLENGTH \
				)
			}
		} else {
			uint_radix_opt+= 0
		}
		if (!uint_radix_opt) uint_radix_opt= 10
		vinit(radix, uint_radix_opt)
		sl= length(str); vinit(dst, 0); vinit(a)
		for (i= 1; i <= sl; ++i) {
			if ( \
				!(c= vrevdigits[substr(str, i, 1)]) \
				|| c > uint_radix_opt \
			) {
				die( \
					"Invalid digit '" substr(str, i, 1) \
					"' in '" str "' for radix base " \
					uint_radix_opt "!" \
				)
			}
			vmult(dst, radix)
			vinit(a, c - 1)
			vadd(dst, a)
		}
	}

