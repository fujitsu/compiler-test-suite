	subroutine sub(r,d)
	real*4 r,d
	r = anint(d)
	end
!
	real*4 d /z'3effffff'/
	real*4 r
	call sub(r,d)
	if(  r .ne. 0.0e0 )  print *,'NG'
	d = -d
	call sub(r,d)
	if(  r .ne. 0.0e0 )  then
          print *,'NG'
        else
          print *,'PASS'
        endif
	end
	

