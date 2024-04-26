PROGRAM MAIN

REAL*16::b=REAL((1.797693134862316_4, 1.79769313_4),16)

call check(b,REAL((1.797693134862316_4, 1.79769313_4),16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->R16) ???'
      else
        print*,"C->R16 OK"
      endif
      end subroutine
