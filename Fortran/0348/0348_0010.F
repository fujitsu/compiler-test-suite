	program main
	dimension a(10000),b(10000)
	equivalence(a,b)
	a=1
	b=2
	call test(loc(a(2)),loc(b),10000-1)
	if( a(1) == 2 .and. a(10000) == 3 ) then
	print *,"OK"
	else
	print *,"NG"
	print *,a(1),a(10000)
	endif
	end
!
	subroutine test(p,q,n)
	pointer(p,a(n))
	pointer(q,b(n))
	a = b + 1
	end

