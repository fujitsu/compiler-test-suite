	dimension a(1000)
	a=1
	s=0
	do i=1,1000
	  s=s+a(i)
	end do
	call sub(i)
	print *,i,s
	end
	subroutine sub(j)
	dimension a(1000)
	a=1
	s=0
	do j=1,1000
	  s=s+a(j)
	end do
	j=s
	end
