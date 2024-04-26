	subroutine sub(a,b,n)
	dimension a(n),b(n)
	do i=2,n
	   if( a(i).eq.0 ) then 
	      a(i) = a(i) + 1
           endif
	   b(i) = a(i-1)
	end do
	end
	parameter(n=1000)
	dimension a(n),b(n)
	b = 0
	do i=1,n
	  a(i) = -(i)
	end do
	call sub(a,b,n)
	print *,merge("OK","NG",sum(a) == -500500.000 )
	print *,merge("OK","NG",sum(b) == -499500.000 )
	end
