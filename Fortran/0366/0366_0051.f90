!
	program main
	common /com/i
	dimension a(1000)
	data a/1000*0/
	do i=1,1000
	  a(i) = a(i) + 1
	end do
	call sub(a)
	print *,sum(a)
	end
!
	subroutine sub(a)
	common /com/i
	dimension a(1000)
	do i=1,1000
	  a(i) = a(i) + 1
	end do
	end
