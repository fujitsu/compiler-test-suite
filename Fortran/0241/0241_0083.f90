PROGRAM MAIN

REAL::b=REAL((3.40282347e+38_16, 1.79769313_16),4)

call check(b,REAL((3.40282347e+38_16, 1.79769313_16),4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C32->R) ???'
      else
        print*,"C32->R OK"
      endif
      end subroutine

