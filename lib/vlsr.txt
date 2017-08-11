	# Returns the previous least significant bit that has been shifted out.
	function vlsr(dst    , carry, n, b) {
		vnormalize(dst)
		carry= 0
		for (n= dst["n"]; n--; ) {
			b= dst[n] * 0.5
			if (int(b) != b) {
				b= int(b) + carry
				carry= vshiftin
			} else {
				b+= carry
				carry= 0
			}
			dst[n]= b
		}
		vnormalize(dst)
		return !!carry
	}

