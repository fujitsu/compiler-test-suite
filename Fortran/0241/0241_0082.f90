PROGRAM MAIN

REAL*8::b=REAL((1.797693134862316_16, 3.40282347_16),8)

call check(b,REAL((1.797693134862316_16, 3.40282347_16),8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C32->R8) ???'
      else
        print*,"C32->R8 OK"
      endif
      end subroutine

