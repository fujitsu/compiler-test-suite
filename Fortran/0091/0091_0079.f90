PROGRAM MAIN
REAL(KIND=8),PARAMETER::a= 922337203685477.00_8

INTEGER(KIND=8),PARAMETER::b=NINT(a,8)

call check(b,(NINT(a,8)))


END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->i8) ???'
       else
        print*, "R8->i8 OK"
      endif
      end subroutine
