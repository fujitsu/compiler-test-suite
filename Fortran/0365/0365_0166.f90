	subroutine sub3(a,n)
	real,dimension(n) :: a
	common /com/s
	do i=1,n
	  t=a(i)
	  s=t+s
	end do
	end
	subroutine sub2(a,n)
	real,dimension(n) :: a
	common /com/s
	do i=1,n
	  t=a(i)
	  s=s+t
	end do
	end

	subroutine sub1(a,n)
	real,dimension(n) :: a
	common /com/s
	do i=1,n
	  t=s+a(i)
	  s=t
	end do
	end
	program main
	real,dimension(100) :: a
	common /com/s
	a = 1
	s=0; call sub1(a,100); print *,s
	s=0; call sub2(a,100); print *,s
	s=0; call sub3(a,100); print *,s
	end
