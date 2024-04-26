	program main
	real a(1000)/1000*1/
	integer index(1000)
	do i=1,999
	  index(i)=i+1
	  j=index(i)
	  a(j) = a(i) + 1
	end do
	print *,sum(a)
	call sub(loc(a))
	end
!
	subroutine sub(b)
	dimension a(1000)
	pointer(b,a)
	do i=1,999
	  j=i+1
	  a(j) = a(i) + 1
	end do
	print *,sum(a)
	end
