PROGRAM MAIN

TYPE ONE
INTEGER*1::b
INTEGER*1::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(FLOOR(114.11_4,1),FLOOR(117.11_4,1))


TYPE(ONE)::Z
Z=ONE(FLOOR(114.11_4,1),FLOOR(117.11_4,1))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      integer*1 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->i1) ???'
      else
        print*,"R->i1 OK"
      endif
      end subroutine


