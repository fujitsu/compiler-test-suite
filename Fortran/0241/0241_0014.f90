PROGRAM MAIN
REAL*8::b=DFLOAT(-2147483647_4)

call check(b,DFLOAT(-2147483647_4))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print*,"DFLOAT i4->R8 OK"
      endif
      end subroutine
