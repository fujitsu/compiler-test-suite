	subroutine sub(a,b,n,c)
	complex tmp,a(n),b(n),c
	tmp = 0
	do i=1,n
	tmp = tmp + conjg(a(i)) * b(i)
	end do
	c = tmp
	end
!
	parameter(n=10000)
	complex a(n),b(n),c
	a = (1.,2.)
	b = (3.,4.)
	do i=1,100
	call sub(a,b,n,c)
	end do
        if( c .eq. (110000.000,-20000.0000) ) then
	print *,"OK"
	else
	print *,"NG"
	endif
	end
	
