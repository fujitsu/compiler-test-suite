PROGRAM MAIN

REAL,PARAMETER::b=REAL(8589934588_8)

call check(b,REAL(8589934588_8))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R) ???'
      else
        print*,"REAL() i8->R OK"
      endif
      end subroutine

