	subroutine sub()
        parameter(n=5*5*5*5)
        common/com/a,b
	complex*16 b(n)
	real*8 a(n)
	do i=1,n
	a(i) = abs(b(i)+b(i))
	end do
	end
!
	subroutine check(a,b)
	type TAG
	real*8 r
	real*8 i
	end type
	type(TAG) b
	real*8 a
        a = abs(dcmplx(b%r,b%i)*2)
	end 
!
        common/com/ans,c1
	real*8 input(5)
	real*8 ans(5,5,5,5),a3
        complex * 16 c1(5,5,5,5)
        complex * 16 a1
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
        call sub( ans, c1, 5)
	do i=1,5
	do j=1,5
	do k=1,5
	do l=1,5
           a1 = cmplx(input(i),input(j))
	   call check( a3, a1)
	   if( ans(i,j,k,l) .ne. a3 ) then
	     print *, "NG", i,j,l,l
	     stop
	   end if
	end do
	end do
	end do
	end do
	print *, "PASS"
	end
