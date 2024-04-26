PROGRAM MAIN

TYPE ONE
COMPLEX::b
COMPLEX::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(cmplx((1.1_4,2.1_4),KIND=4),cmplx((3.2_4,4.2_4),KIND=4))


TYPE(ONE)::Z
Z=ONE(cmplx((1.1_4,2.1_4),KIND=4),cmplx((3.2_4,4.2_4),KIND=4))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      COMPLEX x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->C) ???'
      else
        print*,"C->C OK"
      endif
      end subroutine
