PROGRAM MAIN
INTEGER(KIND=4),PARAMETER::a=123321123
REAL,PARAMETER::b=REAL(a)

call check(b,REAL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R) ???'
      else
        print*,"REAL i4->R OK"
      endif
      end subroutine
