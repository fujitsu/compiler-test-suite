PROGRAM MAIN
REAL*16,PARAMETER::a=3362.34_16
INTEGER*2::b=NINT(a,2)

call check(b,NINT(a,2))

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
