PROGRAM MAIN

TYPE ONE
COMPLEX::b
COMPLEX::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(CSQRT((214.11_4,214.11_4) ),CSQRT((214.11_4,214.11_4)))


TYPE(ONE)::Z
Z=ONE(CSQRT((214.11_4,214.11_4)),CSQRT((214.11_4,214.11_4)))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      COMPLEX x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C8->C8) ???'
      else
        print*,"C8->C8 OK"
      endif
      end subroutine
