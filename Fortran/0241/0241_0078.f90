PROGRAM MAIN
COMPLEX*16,PARAMETER::a=(1.797693134862316d+307, 1.79769313)

REAL*16::b=REAL(a,16)

call check(b,REAL(a,16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C16->R16) ???'
      else
        print*,"C16->C16 OK"
      endif
      end subroutine
