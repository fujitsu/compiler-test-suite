	real*4 function fun(c1)
	complex*8 c1
	fun = abs(c1)
	end
!
	real*8 function fun16(c1)
	complex*16 c1
	fun16 = abs(c1)
	end
!
        real*4  fun
        real*8 fun16
        if( abs(fun((1.0,2.0))-2.236_4) .gt. 0.001 )then
          print *,"NG1 ", fun((1.0,2.0))
        endif
        if( abs(fun16((1.0_8,2.0_8))-2.2360679_8) .gt. 0.000001 ) then
          print *,"NG2 ", fun16((1.0_8,2.0_8))
        endif
        print *,"PASS"
        end


