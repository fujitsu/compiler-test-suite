PROGRAM MAIN
INTEGER*8,PARAMETER::a=23456248059_8

REAL*8::b=REAL(a,8)

call check(b,REAL(a,8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R8) ???'
      else
        print*,"i8->R8 OK"
      endif
      end subroutine

