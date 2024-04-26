	module moda
	logical,dimension(-1:1)::s
	end module
	subroutine sub3(a,n)
	use moda
	logical,dimension(n) :: a
	do i=1,n
	  s(1)=a(i).or.s(1)
	end do
	end
	subroutine sub2(a,n)
	use moda
	logical,dimension(n) :: a
	do i=1,n
	  s(1)=s(1).or.a(i)
	end do
	end
	subroutine sub1(a,n)
	use moda
	logical,dimension(n) :: a
	do i=1,n
	  s(-1)=s(-1).or.a(i)
	end do
	end
	program main
	use moda
	logical,dimension(100) :: a
	a = .false.
	s=.false.; call sub1(a,100); print *,s
	s=.false.; call sub2(a,100); print *,s
	s=.false.; call sub3(a,100); print *,s
	a(100) = .true.
	s=.false.; call sub1(a,100); print *,s
	s=.false.; call sub2(a,100); print *,s
	s=.false.; call sub3(a,100); print *,s
	end
