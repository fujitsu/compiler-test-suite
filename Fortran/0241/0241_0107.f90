PROGRAM MAIN
REAL::b=REAL(9223372036854775807_8)

call check(b,REAL(9223372036854775807_8))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R) ???'
      else
        print*,"i8->R OK"
      endif
      end subroutine
