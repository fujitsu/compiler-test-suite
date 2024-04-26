	program main
	common /com/n1,n2,n3
	dimension a(1000)
	data a/1000*1/
	do i=n1,n2,n3
	  a(i+1) = a(i) + 1
	end do
	print *,sum(a)
	call sub(loc(a))
	end

	subroutine sub(b)
	common /com/n1,n2,n3
	dimension a(1000)
	pointer(b,a)
	do i=n1,n2,n3
	  a(i+1) = a(i) + 1
	end do
	print *,sum(a)
	end
!
        block data
	common /com/n1,n2,n3
	data n1/1/
	data n2/999/
	data n3/1/
	end
