	recursive subroutine sub3(a,ss,n)
	integer*2,dimension(n) :: a
	integer*1::s,ss
	s=ss
	do i=1,n
	  s=max(a(i),s)
	end do
	ss=s
	end
	recursive subroutine sub2(a,ss,n)
	integer*2,dimension(n) :: a
	integer*1::s,ss
	s=ss
	do i=1,n
	  s=min(s,a(i))   
	end do
	ss=s
	end
	recursive subroutine sub1(a,ss,n)
	integer*2,dimension(n) :: a
	integer*1::ss
	do i=1,n
	  ss=max(ss,a(i))
	end do
	end
	program main
	integer*2,dimension(100) :: a
	integer*1::s
	a = 0
	a(100) = 1
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	s=0; call sub3(a,s,100); print *,s
	a(100) = -1
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	s=0; call sub3(a,s,100); print *,s
	end
