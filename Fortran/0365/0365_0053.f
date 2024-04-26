	subroutine test1
	complex c(1000)
	do i=1,1000
	  c(i) = i
	end do
	do i=2,1000
	  c(1) = c(i)
	end do
	print *,c(1)
	end
	call test1
	end
