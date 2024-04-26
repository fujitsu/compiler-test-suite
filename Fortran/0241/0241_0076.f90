PROGRAM MAIN

REAL*8::b=REAL((-3.40282347e+38_4, -34028.2347_4),8)

call check(b,REAL((-3.40282347e+38, -34028.2347_4),8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->R8) ???'
      else
        print*,"C->R8 OK"
      endif
      end subroutine
