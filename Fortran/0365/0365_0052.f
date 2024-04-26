	recursive subroutine test1
	complex c(1000)
	do i=1,1000
	  c(i) = 1 
	  c(i) = c(i) + 2
	  c(i) = c(i) * 3
	  c(i) = c(i) - (4.0,2.0)
	  c(i) = c(i) / 2
	end do
	print *,sum(c)
	end
	call test1
	end
