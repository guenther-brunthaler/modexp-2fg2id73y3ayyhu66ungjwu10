	function vcmp(v1, v2    , i, n, nallz, diff, borrow) {
		if (v2["n"] > (n= v1["n"])) n= v2["n"]
		for (nallz= borrow= i= 0; i < n; ++i) {
			if (borrow= (diff= v1[i] - v2[i] - borrow) < 0) {
				diff+= vmodulus
			}
			if (diff) nallz= 1
		}
		return borrow ? -1 : nallz
	}

