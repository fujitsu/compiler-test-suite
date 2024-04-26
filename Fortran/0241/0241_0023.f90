PROGRAM MAIN
COMPLEX*16,PARAMETER::a=(1.797693134, 3.40)
REAL*8::b=DREAL(a)

call check(b,DREAL(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C16->R8) ???'
      else
        print*,"DREAL C16->R8 OK"
      endif
      end subroutine
