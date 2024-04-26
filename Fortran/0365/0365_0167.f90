	subroutine sub(l,n)
	dimension l(n)
	logical l
	j=0
	do i=1,n
	  if( l(i) ) j=i
	end do
	print *,j
	end
	parameter(n=100)
	dimension l(n)
	logical l
	l = .false.
	l(9) = .true.
	l(88) = .true.
	call sub(l,n)
	end
