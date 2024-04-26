PROGRAM MAIN
REAL*16::b=REAL(3074457345618258602_8, (int(8.32,4)*2))

call check(b,REAL(3074457345618258602_8, (int(8.32,4)*2)))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R16) ???'
      else
        print*,"i8->R16 OK"
      endif
      end subroutine

