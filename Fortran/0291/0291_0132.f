	program main
	real*16 r16(5) / -10.E-10,-0.5,0,0.5 , 10.E10 /
	integer ifun
	do i=1,5
	  if( ifun(r16(i)) .ne. nint(r16(i)) ) then
	    print *,' NG ',i
	  endif
	enddo
	print *,' PASS '
	end
	integer function ifun(r16)
	real*16 r16
	if( r16 .gt.0 ) then
	  ifun = int(r16+0.5)
	else
	  ifun = int(r16-0.5)
	endif
	end
