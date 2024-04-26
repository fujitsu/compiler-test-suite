PROGRAM MAIN
REAL*16::b=MODULO(-775808.23_16,8.0_16)
REAL*16::c
c=MODULO(-775808.23_16,8.0_16)

call check(b,c)

END

      subroutine check(x,y)
      REAL*16 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R16->R16) ???'
       else
        print*, "R16->R16 OK"
      endif
      end subroutine
