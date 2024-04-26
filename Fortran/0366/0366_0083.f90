	subroutine sub1(i)
	dimension a(1000)
	do i=1,1000
	  a(i) = 1
	end do
	end
	subroutine sub2(j)
	dimension a(1000)
	do i=1,1000
	  a(i) = 1
	end do
	j=i
	end
	subroutine sub3(i)
	dimension a(1000)
	do i=1000,1,-1
	  a(i) = 1
	end do
	end
	subroutine sub4(j)
	dimension a(1000)
	do i=1000,1,-1
	  a(i) = 1
	end do
	j=i
	end
	call sub1(i)
	print *,i
	call sub2(i)
	print *,i
	call sub3(i)
	print *,i
	call sub4(i)
	print *,i
	end
