PROGRAM MAIN

TYPE ONE
REAL::b
REAL::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(ACOS(0.1_4),ACOS(0.1_4))


TYPE(ONE)::Z
Z=ONE(ACOS(0.1_4),ACOS(0.1_4))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      REAL x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->R) ???'
      else
        print*,"R->R OK"
      endif
      end subroutine

