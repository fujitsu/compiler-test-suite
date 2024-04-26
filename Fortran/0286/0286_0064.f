	subroutine sub(r,ex)
	real*8 r,q,s,ex
	external ex
	q = dint(r)
        s = ex(r)	
	if( q .ne. s ) then
	 print *,"NG dint(",r,")=",q,",",s
        endif
	end
	program main
        real*8 r
	intrinsic dint
	call sub(1.1D0,dint)
 	r = 1.7976931348623157D+308
 	do i=1,10000
 	call sub(r,dint)
 	r=r/100
 	end do
	print *,"PASS"
	end

