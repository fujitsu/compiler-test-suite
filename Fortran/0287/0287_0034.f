	real*4 function fun(c1)
	implicit none
	complex*8 c1
	fun = real(c1)
	end
!
	real*8 function fun16(c1)
	implicit none
	complex*16 c1
	fun16 = real(c1)
	end
!
	implicit none
        real*4  fun
        real*8 fun16
        if( fun((1.0,2.0)) .ne. 1.0 )then
          print *,"NG1 ", fun((1.0,2.0))
        endif
        if( abs(fun16((1.0_8,2.0_8))-1.0_8) .gt. 0.000001_8 ) then
          print *,"NG2 ", fun16((1.0_8,2.0_8))
        endif
        print *,"PASS"
        end

