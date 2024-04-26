PROGRAM MAIN
COMPLEX*16,PARAMETER::a=(1.797693134862316d+307, 1.797693)

REAL*8::b=DBLE(a)

call check(b,DBLE(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C16->R8) ???'
      else
        print*,"DBLE C16->R8 OK"
      endif
      end subroutine
