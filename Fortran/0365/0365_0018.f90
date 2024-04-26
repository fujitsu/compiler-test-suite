!
	subroutine test1(i1,n,a,m)
	integer n,m
	integer i1(n)
	real    a(m)
	do i=sum(i1),m
	  a(i) = a(i) + 1
	end do
	end
!
	subroutine test2(i1,n,a,m)
	integer n,m
	integer i1(n)
	real    a(m)
	do i=sum(i1),m,2
	  a(i) = a(i) + 1
	end do
	end
!
	integer n,m
	parameter(n = 1000,m=2000 )
	integer i1(n)
	real    a(m)
	i1 = 1
	a = 0
	call test1(i1,n,a,m)
	print *,merge("OK1","NG1",sum(a)==1001)
	a = 0
	call test2(i1,n,a,m)
	print *,merge("OK2","NG2",sum(a)==501)
	end
