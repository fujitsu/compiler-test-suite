PROGRAM MAIN

TYPE ONE
REAL*16::a
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(SIGN(1.1_4, -0.0_16))


TYPE(ONE)::Z
Z=ONE(SIGN(1.1_4, -0.0_16))

call check1(O%a,Z%a)
END

      subroutine check1(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R16) ???'
      else
        print*,"R16->R16 OK"
      endif
      end subroutine
