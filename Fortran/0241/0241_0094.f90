PROGRAM MAIN

REAL*8::b=REAL(z'2AAAAAAAAAAAAAAA',8)

call check(b,REAL(z'2AAAAAAAAAAAAAAA',8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: boz->R8) ???'
      else
        print*,"boz->R8 OK"
      endif
      end subroutine
