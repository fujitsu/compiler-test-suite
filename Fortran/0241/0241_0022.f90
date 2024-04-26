PROGRAM MAIN
COMPLEX*8,PARAMETER::a=(1.797, 3.40)
REAL*8::b=DREAL(a)

call check(b,DREAL(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->R8) ???'
      else
        print*,"DREAL C->R8 OK"
      endif
      end subroutine
