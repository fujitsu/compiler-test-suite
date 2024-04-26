	subroutine sub3(a,s,n)
	integer*2,dimension(n) :: a
	integer*1,dimension(-1:1)::s
	do i=1,n
	  s(1)=or(a(i),s(1))
	end do
	end
	subroutine sub2(a,s,n)
	integer*2,dimension(n) :: a
	integer*1,dimension(-1:1)::s
	do i=1,n
	  s(1)=or(s(1),a(i))
	end do
	end
	subroutine sub1(a,s,n)
	integer*2,dimension(n) :: a
	integer*1,dimension(-1:1)::s
	do i=1,n
	  s(-1)=or(s(-1),a(i))
	end do
	end
	program main
	integer*2,dimension(100) :: a
	integer*1,dimension(-1:1)::s
	a = 0
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	s=0; call sub3(a,s,100); print *,s
	a(100) = 1
	s=0; call sub1(a,s,100); print *,s
	s=0; call sub2(a,s,100); print *,s
	s=0; call sub3(a,s,100); print *,s
	end
