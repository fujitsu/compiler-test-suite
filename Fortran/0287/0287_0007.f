	subroutine sub(a,b,c,n)
	complex*16 a(n,n,n,n),b(n,n,n,n),c(n,n,n,n)
	do i=1,n
	do j=1,n
	do k=1,n
	do l=1,n
	a(i,j,k,l) = b(i,j,k,l) / c(i,j,k,l)
	end do
	end do
	end do
	end do
	end
!
	subroutine check(a,b,c)
	type TAG
	real*8 r
	real*8 i
	end type
	type(TAG) a,b,c
        complex*16 c1
        c1 = dcmplx(b%r,b%i) / dcmplx(c%r,c%i)
        a%r = c1
        a%i = dimag(c1)
	end 
!
	real*8 input(5)
	complex * 16 ans(5,5,5,5)
        complex * 16 c1(5,5,5,5),c2(5,5,5,5)
        complex * 16 a1,a2,a3
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
	   if( a2.ne.0 ) then
             if( abs(DBLE(ans(i,j,k,l)) - DBLE(a3)) > 0.00001 ) then
	       print *, "NG real ", i,j,k,l
               print *, a1,"/",a2
               print *, ans(i,j,k,l)
               print *, a3
	       stop
	     end if
             if( abs(dimag(ans(i,j,k,l)) - dimag(a3)) > 0.00001 ) then
	       print *, "NG imag ", i,j,k,l
               print *, a1,"/",a2
               print *, ans(i,j,k,l)
               print *, a3
	       stop
	     end if
	   end if
	end do
	end do
	end do
	end do
	print *, "PASS"
	end
