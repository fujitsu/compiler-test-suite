	logical*1 l1/3/
	logical*2 l2/3/
	logical*4 l4/3/
	logical*8 l8/3/
	print *,l1,l2,l4,l8
	l1 = .true.
	l2 = .true.
	l4 = .true.
	l8 = .true.
	print *,l1,l2,l4,l8
	l1 = .false.
	l2 = .false.
	l4 = .false.
	l8 = .false.
	print *,l1,l2,l4,l8
	end
