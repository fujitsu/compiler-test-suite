PROGRAM MAIN

TYPE ONE
INTEGER*2::b
INTEGER*2::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(INT2(214.11_4),INT2(2147.11_4))

TYPE(ONE)::Z
Z=ONE(INT2(214.11_4),INT2(2147.11_4))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      integer*2 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->i2) ???'
      else
        print*,"R->i2 OK"
      endif
      end subroutine
