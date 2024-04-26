PROGRAM MAIN
REAL*16,PARAMETER::a=1234.123456789

REAL::b=REAL(a,4)

call check(b,REAL(a,4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R) ???'
      else
        print*,"R16->R OK"
      endif
      end subroutine

