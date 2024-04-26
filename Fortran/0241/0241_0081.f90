PROGRAM MAIN

REAL*16::b=REAL((3.40282347e+38_16, 3.40_16),16)

call check(b,REAL((3.40282347e+38_16, 3.40_16),16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C32->R16) ???'
      else
        print*,"C32->R16 OK"
      endif
      end subroutine
