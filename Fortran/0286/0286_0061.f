	intrinsic cdabs
	real*8 cdabs
	do r1=-100.0,100.0,0.1
	do r2=-100.0,100.0,0.1
	call test(cdabs,dcmplx(r1,r2))
	end do
	end do
	print *,"PASS"
	end
	subroutine test(ca,c)
	complex*16 c
        real*8     ca
	if( dabs(ca(c) - cdabs(c)) > 0.00001) stop "NG"
	end
	
