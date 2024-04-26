PROGRAM MAIN

REAL,PARAMETER::b=FLOAT(8589934588_8)

call check(b,FLOAT(8589934588_8))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R) ???'
      else
        print*,"FLOAT() i4->R OK"
      endif
      end subroutine

