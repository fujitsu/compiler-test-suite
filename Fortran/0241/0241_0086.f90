PROGRAM MAIN

REAL::b=REAL(-455.23,4)

call check(b,REAL(-455.23,4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R4->R4) ???'
      else
        print*,"R4->R4 OK"
      endif
      end subroutine
