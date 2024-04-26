	program main
	real*4,dimension(100) :: a
	real*16,allocatable,dimension(:)::s
	allocate(s(1))
	a(1:100:2)   = 2
	a(2:100:2)   = 0.5
	s=1; call sub1(a,s,100); print *,s
	s=1; call sub2(a,s,100); print *,s
	contains
	recursive subroutine sub1(a,s,n)
	real*4,dimension(n) :: a
	real*16::s(:)
	do i=1,n
	  s(1)=a(i)*s(1)
	end do
	end subroutine 
	recursive subroutine sub2(a,s,n)
	real*4,dimension(n) :: a
	real*16::s(:)
	do i=1,n
	  s(1)=s(1)*a(i)
	end do
	end subroutine 
	end
