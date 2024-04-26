PROGRAM MAIN
REAL(KIND=8),PARAMETER::a= 922337203685477.00_8

REAL(KIND=8),PARAMETER::b=MODULO(a,8)

call check(b,MODULO(a,8))


END

      subroutine check(x,y)
      REAL*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
       else
        print*, "R8->R8 OK"
      endif
      end subroutine
