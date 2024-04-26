PROGRAM MAIN

REAL*16::b=REAL(2147.111_4,16)

call check(b,REAL(2147.111_4,16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R4->R16) ???'
      else
        print*,"R4->R16 OK"
      endif
      end subroutine
