PROGRAM MAIN

REAL::b=REAL((3.40282347e+38_8, 1.79769313_8),4)

call check(b,REAL((3.40282347e+38_8, 1.79769313_8),4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C16->R) ???'
      else
        print*,"C16->R OK"
      endif
      end subroutine

