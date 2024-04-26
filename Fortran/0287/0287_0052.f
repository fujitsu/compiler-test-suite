	subroutine sub(a,b,n)
	dimension a(n),b(n)
	do i=1,n
	a(i) = a(i) * b(i)
	end do
	end
!
	integer,parameter::n=100000
	dimension a(n),b(n)
	a = 2
	b = 3
	call sub(a,b,n)
	if( a(1) .eq. 6 ) then
	print *,"OK"
	else
	print *,"NG"
	endif
	end 
	
