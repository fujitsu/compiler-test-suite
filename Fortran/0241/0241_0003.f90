PROGRAM MAIN

REAL*16,PARAMETER::a=179.76931348623161111
REAL*8::b=DBLE(a)

call check(b,DBLE(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R8) ???'
      else
        print*,"DBLE R16->R8 OK"
      endif
      end subroutine
