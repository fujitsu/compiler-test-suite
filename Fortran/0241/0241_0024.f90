PROGRAM MAIN
COMPLEX*32,PARAMETER::a=(1.797693134862316d+307, 3.40282347e+38)
REAL*8::b=DREAL(a)

call check(b,DREAL(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C32->R8) ???'
      else
        print*,"DREAL C32->R8 OK"
      endif
      end subroutine
