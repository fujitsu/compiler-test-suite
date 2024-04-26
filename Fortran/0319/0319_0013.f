	subroutine s(k)
	real val(5),x1,y1,ans
	parameter (ans=7.94069195)
	do 10 i=1,10
	  call set(val)
	  x1 = val(2) + val(4) * cos(val(5))
	  y1 = val(3) + val(4) * sin(val(5))
	  if ( k.eq.i ) then
	    x1 = val(2) + val(4) * cos(val(5)+val(1))
	    y1 = val(3) + val(4) * sin(val(5)+val(1))
	  endif
	  x1 = x1 + x1
	  y1 = y1 + y1
10	continue
	if ( abs(ans-abs(x1-y1))<0.1e-5) then
	  print *,"OK"
	else
	  print *,"NG"
	endif
	return
	end
	subroutine set(val)
	real val(5)
	val(1)=1.0
	val(2)=2.0
	val(3)=3.0
	val(4)=4.0
	val(5)=5.0
	return
	end
	common x1,y1,x2,y2
	call s(0)
	stop
	end
