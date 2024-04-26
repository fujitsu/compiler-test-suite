PROGRAM MAIN
REAL*8::b=REAL(1.7976931348623161111_16,8)

call check(b,REAL(1.7976931348623161111_16,8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R8) ???'
      else
        print*, "R16->R8 OK"
      endif
      end subroutine
