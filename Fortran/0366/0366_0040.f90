	do i=1,10
	  write(6,1)
	end do
1	format(1h ,' Hello ')
	call sub(i)
	print *,i
	end
	subroutine sub(j)
	dimension a(1000)
	do j=1,1000
	  a(j) = 1
	end do
	j=a(10)
	end
