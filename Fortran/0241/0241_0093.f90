PROGRAM MAIN

REAL*16::b=REAL(o'255722220', 16)

call check(b,REAL(o'255722220', 16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: boz->R16) ???'
      else
        print*,"boz->R16 OK"
      endif
      end subroutine
