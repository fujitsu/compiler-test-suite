	program main
	real*16 r16(5) / -10.E-10,-0.5,0,0.5 , 10.E10 /
	integer*8 ifun
	do i=1,5
	  if( ifun(r16(i)) .ne. nint(r16(i),8) ) then
	    print *,' NG ',i,ifun(r16(i)),nint(r16(i),8)
	  endif
	enddo
	print *,' PASS '
	end
	integer*8 function ifun(r16)
	real*16 r16
	if( r16 .gt.0 ) then
	  ifun = int(r16+0.5,8)
	else
	  ifun = int(r16-0.5,8)
	endif
	end
