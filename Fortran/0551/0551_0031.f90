PROGRAM MAIN

REAL,PARAMETER::b=REAL(214_2)

call check(b,REAL(214_2))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R) ???'
      else
        print*,"REAL() i2->R OK"
      endif
      end subroutine

