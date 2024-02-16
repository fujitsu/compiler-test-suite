PROGRAM MAIN
REAL*8,PARAMETER::a=3362.34_8
INTEGER*2::b=CEILING(a,2)

call check(b,CEILING(a,2))

END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->i2) ???'
      else
        print*, "R8->i2 OK"
      endif
      end subroutine
