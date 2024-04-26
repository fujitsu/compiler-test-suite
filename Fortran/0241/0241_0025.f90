PROGRAM MAIN

REAL,PARAMETER::b=FLOAT(214_2)

call check(b,FLOAT(214_2))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R) ???'
      else
        print*,"FLOAT() i2->R OK"
      endif
      end subroutine

