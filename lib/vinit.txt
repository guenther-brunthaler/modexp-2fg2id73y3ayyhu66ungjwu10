	# <uint> may be omitted if <v> will be assigned to before use anyway.
	function vinit(v, uint    , i) {
		if (!vmodulus) vinternal()
		for (i in v) delete v[i]
		v["n"]= 1
		v[0]= uint
	}

