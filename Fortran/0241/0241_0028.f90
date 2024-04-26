PROGRAM MAIN
INTEGER(KIND=2),PARAMETER::a=32767
REAL,PARAMETER::b=REAL(a)

call check(b,REAL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R) ???'
      else
        print*,"REAL i2->R OK"
      endif
      end subroutine
