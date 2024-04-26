PROGRAM MAIN

REAL*8::b=DBLE(z'2AAAAAAAAAAAAAAA')

call check(b,DBLE(z'2AAAAAAAAAAAAAAA'))

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
