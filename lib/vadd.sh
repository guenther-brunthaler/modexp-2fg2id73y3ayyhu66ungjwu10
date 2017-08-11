	function vadd(dst, add    , i, n, sum, carry) {
		if (add["n"] > (n= dst["n"])) dst["n"]= n= add["n"]
		for (carry= i= 0; i < n; ++i) {
			if ( \
				carry= (sum= dst[i] + add[i] + carry) \
					>= vmodulus \
			) { \
				sum-= vmodulus
			}
			dst[i]= sum
		}
		if (carry) {
			dst[n]= 1
			dst["n"]= n + 1
		}
	}

