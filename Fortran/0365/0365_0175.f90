	recursive subroutine sub1(a,ss,n)
	integer*2,dimension(n) :: a
	real*16::s(n),ss
        s = 0
	do i=1,n
	  s(1)=max(a(i),s(1))
	end do
	ss=s(1)
	end
	recursive subroutine sub2(a,ss,n)
	integer*2,dimension(n) :: a
	real*16::s(n),ss
        s = 0
	do i=1,n
	  s(1)=min(s(1),a(i))   
	end do
	ss=s(1)
	end
	program main
	integer*2,dimension(100) :: a
	real*16::s
	a = 0
	a(100) = 1
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	a(100) = -1
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	end
