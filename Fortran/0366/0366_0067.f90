	program main
	real a(1000)/1000*0/
	do i=1.0,999.0
	  a(i) = a(i) + 1
	end do
	print *,sum(a)
	call sub(a)
	end

	subroutine sub(a)
	dimension a(*)
	do i=0+1+0,999+0
	  a(i) = a(i) + 1
	end do
	print *,sum(a(1:1000))
	end
