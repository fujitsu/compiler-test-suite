	intrinsic cabs
	real cabs
	do r1=-100.0,100.0,0.1
	do r2=-100.0,100.0,0.1
	call test(cabs,cmplx(r1,r2))
	end do
	end do
	print *,"PASS"
	end
	subroutine test(ca,c)
	complex c
	if( ca(c) .ne. cabs(c) ) stop "NG"
	end
	
