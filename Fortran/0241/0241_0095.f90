PROGRAM MAIN

REAL::b=REAL(o'255722220')

call check(b,REAL(o'255722220'))

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
