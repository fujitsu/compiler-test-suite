PROGRAM MAIN
REAL*8,PARAMETER::a=1.797693134862316d+307
REAL*8::b=REAL(a,8)

call check(b,REAL(a,8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
      else
        print*,"R8-R8 OK"
      endif
      end subroutine
