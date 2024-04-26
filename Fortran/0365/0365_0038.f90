	call test
	end

	subroutine test
	character*10 c
	c=' '
	do i=1,10
	  call sub(c(i:i))
	end do
	print *,c
	end
	subroutine sub(c)
	character*1 c
	c = 'A'
	end
