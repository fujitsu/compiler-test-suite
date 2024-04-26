!
	subroutine test1(l1,n,a,m)
	integer n,m
	logical*1 l1(n)
	real    a(m)
	do i=1,count(l1)
	  a(i) = a(i) + 1
	end do
	end
!
	subroutine test2(l1,n,a,m)
	integer n,m
	logical*1 l1(n)
	real    a(m)
	do i=1,count(l1),2
	  a(i) = a(i) + 1
	end do
	end
!
	integer n,m
	parameter(n = 1000,m=2000 )
	logical*1 l1(n)
	real    a(m)
	l1(1::2) = .true.
	l1(2::2) = .false.
	a = 0
	call test1(l1,n,a,m)
	print *,merge("OK1","NG1",sum(a)==500)
	a = 0
	call test2(l1,n,a,m)
	print *,merge("OK2","NG2",sum(a)==250)
	end
