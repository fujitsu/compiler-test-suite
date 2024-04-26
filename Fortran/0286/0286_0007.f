	subroutine sub(a,b,n)
	real*4 a(n), b(n)
	i=1
	b(i) = anint(a(i))
	end
!
	subroutine check(a,b,n,func)
	real*4 a(n), b(n), func
	external func
	i=1
	if ( b(i) .ne. func(a(i)) ) then
	   print *,"NG"
	   stop
	endif
	end
!
	real*4 a(-10:10), b(-10:10)
	intrinsic anint
	do i=-10,10
	a(i) = i
	a(i) = a(i) / 100.0
	end do
!
	call sub(a, b, 21)
!
	call check(a, b, 21, anint)
	print *,"PASS"
	end
        
	  
