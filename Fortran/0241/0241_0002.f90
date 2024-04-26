PROGRAM MAIN
COMPLEX*32,PARAMETER::a=(12345.1234512345_16, 3.40282_16)

REAL*8::b=DBLE(a)

call check(b,DBLE(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C32->R8) ???'
      else
        print*,"DBLE C32->R8 OK"
      endif
      end subroutine
