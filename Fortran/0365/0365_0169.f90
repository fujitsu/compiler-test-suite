	subroutine test1(n)
	real*4 a
	dimension a(100)
	data a/100*1.0/
	s=0
	do i=1,n,2
	  t=s+a(i)
	  s=t+a(i+1)
	end do
	print *,s
	end

	subroutine test2(n)
	real*4  a
	dimension a(100)
	data a/100*1.0/
	s=0
	do i=1,n,2
	  t=s+a(i)
	  s=t+a(i+1)
	end do
	print *,s,t
	end
!
	call test1(99)
	call test2(99)
	end
