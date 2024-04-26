	subroutine test1
	character*10 c(1000)
	do i=1,1000
	  c(i) = 'ABC'
	end do
	print *,c(1)
	end
	call test1
	end
