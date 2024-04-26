PROGRAM MAIN
REAL*8::b=DFLOAT(1234_8)

call check(b,DFLOAT(1234_8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R8) ???'
      else
        print*,"DFLOAT i8->R8 OK"
      endif
      end subroutine
