PROGRAM MAIN
REAL*8,PARAMETER::b=DATAN2(44.0_8, 24.4_8)

call check(b,DATAN2(44.0_8, 24.4_8))

END

      subroutine check(x,y)
      Real*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
      else
        print*, "R8->R8 OK"
      endif
      end subroutine