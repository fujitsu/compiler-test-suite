PROGRAM MAIN

REAL*8::b=dble(b'111111111111111')

call check(b,dble(b'111111111111111'))

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
