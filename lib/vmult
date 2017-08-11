	function vmult(dst, mult    , add, m, i, j, n, b, b0) {
		vnormalize(dst); vnormalize(mult)
		# Ensure <m> becomes the shorter of <dst> and <mult>, and
		# <add> becomes the longer one.
		vinit(m); vinit(add)
		if ((n= mult["n"] - dst["n"]) == 0) {
			n= mult[mult["n"] - 1] - dst[dst["n"] - 1]
		}
		if (n <= 0) {
			vassign(m, mult); vassign(add, dst)
		} else {
			vassign(m, dst); vassign(add, mult)
		}
		n= m["n"]; vinit(dst, 0)
		for (i= 0; i < n; ++i) {
			b= m[i]
			for (j= 1; j < vmodulus; j+= j) {
				b0= b * 0.5
				if ((b= int(b0)) != b0) {
					vadd(dst, add)
					if (!b && i + 1 == n) break
				}
				vadd(add, add)
			}
		}
	}

