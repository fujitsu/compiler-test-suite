PROGRAM MAIN

REAL::b=REAL(b'111111111111111',4)

call check(b,REAL(b'111111111111111',4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: boz->R4) ???'
      else
        print*,"boz->R4 OK"
      endif
      end subroutine
