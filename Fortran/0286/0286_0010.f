	subroutine sub(a,b,n)
	real*8 a(n), b(n)
	do i=1,n
	b(i) = dint(a(i))
	end do
	end
!
	subroutine check(a,b,n,func)
	real*8 a(n), b(n), func
	external func
	do i=1,n
	  if ( b(i) .ne. func(a(i)) ) then
	     print *,"NG"
	     stop
	  endif
	end do
	end
!
	real*8 a(-10:10), b(-10:10)
	intrinsic dint
	do i=-10,10
	a(i) = i
	a(i) = a(i) / 100.0
	end do
!
	call sub(a, b, 21)
!
	call check(a, b, 21, dint)
	print *,"PASS"
	end
        
	  
