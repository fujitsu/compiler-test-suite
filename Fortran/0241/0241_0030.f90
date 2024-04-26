PROGRAM MAIN
INTEGER(KIND=8),PARAMETER::a=32767433
REAL,PARAMETER::b=REAL(a)

call check(b,REAL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R) ???'
      else
        print*,"REAL() i8->R OK"
      endif
      end subroutine
