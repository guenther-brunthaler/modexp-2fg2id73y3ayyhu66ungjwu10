	# <dst> as well as <add> must be less than <mod>.
	function vmodsum(dst, add, mod    , i, n, sum, carry, borrow) {
		if (add["n"] > (n= mod["n"])) n= add["n"]
		if (n > dst["n"]) dst["n"]= n; else n= dst["n"]
		for (carry= borrow= i= 0; i < n; ++i) {
			if ( \
				carry= (sum= dst[i] + add[i] + carry) \
				>= vmodulus \
			) {
				sum-= vmodulus
			}
			dst[i]= sum
			borrow= (sum-= mod[i] - borrow) < 0
		}
		if (!borrow) {
			for (borrow= i= 0; i < n; ++i) {
				if ( \
					borrow \
					= (sum= dst[i] - mod[i] - borrow) < 0 \
				) {
					sum+= vmodulus
				}
				dst[i]= sum
			}
		}
	}

