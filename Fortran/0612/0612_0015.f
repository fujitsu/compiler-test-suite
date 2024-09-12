	logical*1 l1
	logical*2 l2
	logical*4 l4
	logical*8 l8
	integer*1 i1
	integer*2 i2
	integer*4 i4
	integer*8 i8
	equivalence(l1,i1)
	equivalence(l2,i2)
	equivalence(l4,i4)
	equivalence(l8,i8)
	l1 = .true.
	l2 = .true.
	l4 = .true.
	l8 = .true.
	print *,i1,i2,i4,i8
	l1 = .false.
	l2 = .false.
	l4 = .false.
	l8 = .false.
	print *,i1,i2,i4,i8
	end
