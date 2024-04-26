PROGRAM MAIN

REAL*8::b=DBLE((-3.40282347e+38_4, -34028.2347_4))

call check(b,DBLE((-3.40282347e+38_4, -34028.2347_4)))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->R8) ???'
      else
        print*,"DBLE C->R8 OK"
      endif
      end subroutine
