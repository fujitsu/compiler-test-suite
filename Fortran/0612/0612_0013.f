	logical*1 l1
	logical*2 l2
	logical*4 l4
	logical*8 l8
	l1 = .true.
	l2 = .true.
	l4 = .true.
	l8 = .true.
	if(l1) print *,"OK"
	if(l2) print *,"OK"
	if(l4) print *,"OK"
	if(l8) print *,"OK"
	l1 = .false.
	l2 = .false.
	l4 = .false.
	l8 = .false.
	if(.not.l1) print *,"OK"
	if(.not.l2) print *,"OK"
	if(.not.l4) print *,"OK"
	if(.not.l8) print *,"OK"
	end
