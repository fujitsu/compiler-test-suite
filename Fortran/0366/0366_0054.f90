	program main
	common /com/i
	dimension a(1000)
	data a/1000*0/
	do i=1,1000
	  a(i) = a(i) + 1
	  call dummy(i)
	end do
	call sub(a)
	print *,a(10)
	end
!
	subroutine sub(a)
	common /com/i
	dimension a(1000)
	do i=1,1000
	  a(i) = a(i) + 1
	end do
	end
!
	subroutine dummy(k)
	end
