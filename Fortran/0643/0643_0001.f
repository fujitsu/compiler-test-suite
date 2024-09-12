	subroutine sub(r,d)
	real*8 r,d
	r = dnint(d)
	end
!
	real*8 d /z'3fdfffffffffffff'/
	real*8 r
	call sub(r,d)
	if(  r .ne. 0.0d0 )  print *,'NG'
	d = -d
	call sub(r,d)
	if(  r .ne. 0.0d0 )  then
          print *,'NG'
        else
          print *,'PASS'
        endif
	end
	

