	subroutine sub()
        parameter(n=5*5*5*5)
        common/com/a,b,c
	complex*8 a(n),b(n),c(n)
	do i=1,n
	a(i) = b(i) * c(i)
	end do
	end
!
	subroutine check(a,b,c)
	type TAG
	real*4 r
	real*4 i
	end type
	type(TAG) a,b,c
	a%r = b%r * c%r - b%i * c%i
	a%i = b%r * c%i + b%i * c%r
	end 
!
        common/com/ans,c1,c2
	real*4 input(5)
	complex * 8 ans(5,5,5,5)
        complex * 8 c1(5,5,5,5),c2(5,5,5,5)
        complex * 8 a1,a2,a3
	data input / -2.1, -1.2, 0, 1.3, 2.4 /
	do i=1,5
	do j=1,5
	do k=1,5
	do l=1,5
           c1(i,j,k,l) = cmplx(input(i),input(j))
           c2(i,j,k,l) = cmplx(input(k),input(l))
	end do
	end do
	end do
	end do
        call sub( ans, c1, c2, 5)
	do i=1,5
	do j=1,5
	do k=1,5
	do l=1,5
           a1 = cmplx(input(i),input(j))
           a2 = cmplx(input(k),input(l))
	   call check( a3, a1, a2)
	   if( abs(ans(i,j,k,l) - a3) .gt. 0.00001 ) then
	     print *, "NG", i,j,k,l
	     print *, ans(i,j,k,l)
	     print *, a3
	     stop
	   end if
	end do
	end do
	end do
	end do
	print *, "PASS"
	end
