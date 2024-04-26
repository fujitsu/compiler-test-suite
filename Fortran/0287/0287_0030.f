	complex*8 function fun(c1,x,y)
	complex*8 c1
	real*4    x,y
	fun = c1 + cmplx(x,y)
	end
!
	complex*16 function fun16(c1,x,y)
	complex*16 c1
	real*8    x,y
	fun16 = c1 + cmplx(x,y)
	end
!
	complex*8  fun
	complex*16 fun16
	if( fun((1.0,2.0),3.0,4.0) .ne. (4.0,6.0) )then
	  print *,"NG1"
        endif
	if( fun16((1.0_8,2.0_8),3.0_8,4.0_8).ne.(4.,6.)) then
	  print *,"NG2"
	endif
	print *,"PASS"
	end

