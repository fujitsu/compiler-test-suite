	subroutine sub(a,b,n,c)
	common/com/idx
	integer*4 idx(21)
	real*4 a(n), b(n), c(n)
	do i=1,n
        do j=1,n
	c(j) = 1.0
	end do
	b(i) = anint(a(idx(i)))
	end do
	end
!
	subroutine check(a,b,n,func)
	real*4 a(n), b(n), func
	external func
	do i=1,n
	  if ( b(i) .ne. func(a(i)) ) then
	     print *,"NG"
	     stop
	  endif
	end do
	end
!
	real*4 a(-10:10), b(-10:10), c(21)
	intrinsic anint
	do i=-10,10
	a(i) = i
	a(i) = a(i) / 100.0
	end do
!
	call sub(a, b, 21, c)
!
	call check(a, b, 21, anint)
	print *,"PASS"
	end
!
        block data
	common/com/idx
	integer*4 idx(21)
	data  idx/5,4,3,13,14,15,11,10,9,1,2,
     1       6,7,8,21,20,19,18,17,16,12/
	end
