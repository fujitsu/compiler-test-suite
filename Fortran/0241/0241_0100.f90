PROGRAM MAIN
INTEGER*1,PARAMETER::a=127
REAL,PARAMETER::b=REAL(a,4)

call check(b,REAL(a,4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->R) ???'
      else
        print*,"i1->R OK"
      endif
      end subroutine

