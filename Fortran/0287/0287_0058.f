	subroutine sub(a,b,n)
	integer*8 i,n
	real*4    a(n)
	complex*8 b(n)
	do i=1,n
	a(i) = abs(b(i))
	end do
	end
!
	subroutine check(a,b)
	type TAG
	real*4 r
	real*4 i
	end type
	type(TAG) a,b
        complex*8 c1
        c1 = abs(cmplx(b%r,b%i))
        a%r = real(c1)
        a%i = imag(c1)
	end
!
	real*4 input(5)
	real * 4 ans(5,5,5,5)
        complex * 8 c1(5,5,5,5)
        complex * 8 a1,a3
	data input / -2.1, -1.2, 0, 1.3, 2.4 /
	do i=1,5
	do j=1,5
	do k=1,5
	do l=1,5
           c1(i,j,k,l) = cmplx(input(i),input(j))
	end do
	end do
	end do
	end do
        call sub( ans, c1, 5*5*5*5_8)
	do i=1,5
	do j=1,5
	do k=1,5
	do l=1,5
           a1 = cmplx(input(i),input(j))
	   call check( a3, a1 )
	   if( abs(ans(i,j,k,l) - real(a3)) .gt. 0.000005 )  then
	     print *, "NG", i,j,l,l, ans(i,j,k,l)-real(a3)
	     stop
	   end if
	end do
	end do
	end do
	end do
	print *, "PASS"
	end
