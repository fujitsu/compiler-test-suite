	program main
	real a(1000)/1000*0/
	common/com/j
	do i=1,999
	  k=j
	  a(i+k) = a(i) + 1
	end do
	print *,sum(a)
	call sub(loc(a))
	end
!
	subroutine sub(b)
	pointer(b,a(1000))
	common/com/j
	do i=1,999
	  k=j
	  a(i+k) = a(i) + 1
	end do
	print *,sum(a)
	end
!
	block data
	common/com/j
	data j/1/
	end
