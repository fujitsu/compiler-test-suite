	complex*8 function fun(c1,c2)
	complex*8 c1,c2
	fun = c1 / c2
	end
!
	complex*16 function fun16(c1,c2)
	complex*16 c1,c2
	fun16 = c1 / c2
	end
!
        complex*8  fun,funres
        complex*16 fun16,fun16res

	funres = fun((1.0,2.0),(3.0,4.0))
	if (abs(real(funres)-0.44) .gt. 0.00005 .or.
     +      abs(imag(funres)-0.08) .gt. 0.00005) then
          print *,"NG1", fun((1.0,2.0),(3.0,4.0))
        endif

	fun16res = fun16((1.0_8,2.0_8),(3.0_8,4.0_8))
        if (abs(dreal(fun16res)-(.44_8)) .gt. 0.00005 .or.
     +      abs(dimag(fun16res)-(.08_08)) .gt. 0.00005) then
          print *,"NG2", fun16((1.0_8,2.0_8),(3.0_8,4.0_8))
        endif
        print *,"PASS"
        end

