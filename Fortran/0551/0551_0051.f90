PROGRAM MAIN
REAL*8,PARAMETER::a=32620.34_8
INTEGER::b=NINT(a)

call check(b,NINT(a))

END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->i4) ???'
      else
        print*, "R8->i4 OK"
      endif
      end subroutine