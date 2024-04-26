	subroutine sub(a)
	dimension a(1000)
	do i=1,1000
	  a(i)=1
	end do
	end
!
	dimension a(1000)
	call sub(a)
	print *,sum(a)
	end
