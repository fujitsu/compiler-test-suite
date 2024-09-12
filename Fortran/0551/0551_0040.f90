PROGRAM MAIN
REAL*8,PARAMETER::a=32623.34_8
INTEGER*2::b=FLOOR(a,2)

call check(b,FLOOR(a,2))

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
