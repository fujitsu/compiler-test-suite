	program main
	real a(1000)/1000*0/
	do i=1,999
	  a(i+1) = a(i) + 1
	end do
	print *,sum(a)
	call sub(loc(a))
	end

	subroutine sub(b)
	pointer(b,a(1000))
	do i=1,999
	  a(i+1) = a(i) + 1
	end do
	print *,sum(a)
	end
