PROGRAM MAIN

REAL,PARAMETER::b=FLOAT(-2147483647_4)

call check(b,FLOAT(-2147483647_4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R) ???'
      else
        print*,"FLOAT() i4->R OK"
      endif
      end subroutine

