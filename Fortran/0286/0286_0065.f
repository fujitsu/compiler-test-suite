	subroutine sub(r,ex)
	real*8 r,q,s,ex
	external ex
	q = dnint(r)
        s = ex(r)	
	if( q .ne. s ) then
	 print *,"NG dnint(",r,")=",q,",",s
        endif
	end
	program main
        real*8 r
	intrinsic dnint
	call sub(1.1D0,dnint)
 	r = 1.7976931348623157D+308
 	do i=1,10000
 	call sub(r,dnint)
 	r=r/100
 	end do
	print *,"PASS"
	end

