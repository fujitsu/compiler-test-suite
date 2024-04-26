PROGRAM MAIN
REAL*8,PARAMETER::b=REAL(3000_2,8)

call check(b,REAL(3000_2,8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R8) ???'
      else
        print*,"i2->R8 OK"
      endif
      end subroutine
