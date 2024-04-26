PROGRAM MAIN
REAL*16,PARAMETER::b=REAL(-1.7976931348623161234123443211234432112344321_8, 16)

call check(b,REAL(-1.7976931348623161234123443211234432112344321_8, 16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R16) ???'
      else
        print*,"R8->R16 OK"
      endif
      end subroutine
