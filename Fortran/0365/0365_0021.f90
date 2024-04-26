!
	subroutine test1(i1,n,a,m)
	integer n,m
	integer*1 i1(n)
	real    a(m)
	do i=minval(i1)+1,m,maxval(i1)
	  a(i) = a(i) + 1
	end do
	end
!
	integer n,m
	parameter(n = 1000,m=2000 )
	integer*1 i1(n)
	real    a(m)
	i1 = 0
	i1(n) = 1
	a = 0
	call test1(i1,n,a,m)
	print *,merge("OK1","NG1",sum(a)==m)
	i1(n) = 2
	a = 0
	call test1(i1,n,a,m)
	print *,merge("OK2","NG2",sum(a)==m/2)
	end
