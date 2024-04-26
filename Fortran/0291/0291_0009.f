	subroutine test1
	logical*1 l1
	logical*4 l4
	integer*8 i8
	l4 = .true.
	i4 = l4
	i8 = i4
	print *,i8
	l1 = .false.
	i4 = l1
	i8 = i4
	print *,i8
	end
	subroutine test2
	logical*1 l1
	logical*4 l4
	integer*8 i8
	i8 = 1
	i4 = i8
	l4 = i4
	print *,l4
	i8 = 0
	i4 = i8
	l1 = i4
	print *,l1
	end
	call test1
	call test2
	end
