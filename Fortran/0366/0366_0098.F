	program main
	parameter(n=10000)
	dimension a(n),p(:)
	target a
	pointer p 
        parameter( x1 = 50005000 )
        parameter( x2 = 50002896 )
	a=1
	p=>a
	call sub(p)
	res =  sum(a,mask=.TRUE.);
	if( res /= x1 .and. res /= x2 ) print *,"NG"
	print *,"PASS"
	contains
	subroutine sub(a)
	pointer a
	dimension a(:)
	do i=1,size(a)-1
	  a(i+1) = a(i) + 1
	end do
	end subroutine
	end

