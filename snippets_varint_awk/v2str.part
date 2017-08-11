	function v2str( \
		v, uint_radix_opt    , \
		vn, i, j, k, n, o, b, carry, sum \
	) {
		if (!uint_radix_opt) {
			uint_radix_opt= 10
		} else if ( \
			uint_radix_opt < 2 \
			|| uint_radix_opt > length(valphabet) \
		) {
			die( \
				"Unsupported output radix base " \
				uint_radix_opt "!" \
			)
		}
		vnormalize(v); vn= v["n"]
		n= 0; o[n++]= 0
		for (i= vn; i--; ) {
			b= v[i]
			for (j= vmodulus; (j*= 0.5) >= 1; ) {
				if (carry= b >= j) b-= j
				for (k= 0; k < n; ++k) {
					sum= o[k]
					if ( \
						carry= (sum+= sum + carry) \
						>= uint_radix_opt \
					) {
						sum-= uint_radix_opt
					}
					o[k]= sum
				}
				if (carry) o[n++]= 1
			}
		}
		sum= ""
		for (k= n; k--; ) sum= sum substr(valphabet, o[k] + 1, 1)
		return sum
	}

