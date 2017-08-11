	# Both <dst> and <src> must already be initialized objects.
	function vassign(dst, src    , i, ns, nd) {
		nd= dst["n"]; ns= src["n"]
		for (i= 0; i < ns; ++i) dst[i]= src[i]
		while (i < nd) delete dst[i++]
		dst["n"]= ns
	}

