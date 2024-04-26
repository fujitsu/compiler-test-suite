	program main
	common /com/i
	dimension a(1000)
	data a/1000*0/
	j=1
	do i=1,1000,j
	  a(i) = a(i) + 1
	  call dummy(j)
	end do
	call sub(a)
	print *,a(10)
	end
!
	subroutine sub(a)
	common /com/i
	dimension a(1000)
	j=1
	do i=1,1000,j
	  a(i) = a(i) + 1
	  j=j+1
	  j=j-1
	end do
	end
!
	subroutine dummy(k)
	end
