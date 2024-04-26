	subroutine test1(n)
	real*4,dimension(100) :: a
	a=1
	s=0
	do i=1,n,2
	  s=s+a(i)+a(i+1)
	end do
	print *,s
	end
!
	subroutine test2(n)
	real*4,dimension(100) :: a
	a=1
	s1=0
	s2=0
	do i=1,n,2
	  s1=s1+a(i)
	  s2=s2+a(i+1)
	end do
	print *,s1+s2
	end
!
	subroutine test3(n)
	real*4,dimension(100) :: a
	a=1
	s=0
	do i=1,n,2
	  s=s+a(i)
	  s=s+a(i+1)
	end do
	print *,s
	end
!
	call test1(99)
	call test2(99)
	call test3(99)
	end
