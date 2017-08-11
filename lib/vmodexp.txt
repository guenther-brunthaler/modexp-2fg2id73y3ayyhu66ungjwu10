	# <dst> must be less than <mod>.
	function vmodexp(dst, ex, mod    , mult) {
		vnormalize(ex)
		if (ex["n"] == 1 && ex[0] == 0) {
			vinit(dst, 1) # dst^0 == 1.
			return
		}
		vinit(mult, 1)
		# Reduce exponent until dst^1 == dst.
		while (ex["n"] != 1 || ex[0] != 1) {
			if (vlsr(ex)) {
				# dst^(2*ex+1) == dst*(dst^(2*ex))
				vmodmult(mult, dst, mod)
			}
			# dst^(2*ex) == (dst*dst)^ex
			vmodmult(dst, dst, mod)
		}
		vmodmult(dst, mult, mod)
	}

