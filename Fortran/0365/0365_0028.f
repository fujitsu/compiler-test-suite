	subroutine sub(a,n)
	dimension a(n)
	common/com/x
	x=0
	do i=1,n
	  if( x < a(i) ) then
	    x=a(i)
	  endif
	enddo
	end
	parameter(n=333)
	common/com/x
	dimension a(n)
	a=0
	a(100) = 1
	call sub(a,n) 
	print *,x
	print *,maxval(a)
	end
