	subroutine sub3(a,n)
	logical,dimension(n) :: a
	logical s,t
	common /com/s(1)
	do i=1,n
	  t=a(i)
	  s(1)=t.and.s(1)
	end do
	end
	subroutine sub2(a,n)
	logical,dimension(n) :: a
	logical s,t
	common /com/s(1)
	do i=1,n
	  t=a(i)
	  s(1)=s(1).and.t
	end do
	end
!
	subroutine sub1(a,n)
	logical,dimension(n) :: a
	logical s,t
	common /com/s(1)
	do i=1,n
	  t=s(1).and.a(i)
	  s(1)=t
	end do
	end
	program main
	logical,dimension(100) :: a
	logical s
	common /com/s
	a = .true.
	s=.true.; call sub1(a,100); print *,s
	s=.true.; call sub2(a,100); print *,s
	s=.true.; call sub3(a,100); print *,s
	a(100) = .false.
	s=.true.; call sub1(a,100); print *,s
	s=.true.; call sub2(a,100); print *,s
	s=.true.; call sub3(a,100); print *,s
	end
