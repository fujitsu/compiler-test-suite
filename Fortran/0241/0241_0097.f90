PROGRAM MAIN
REAL*16::b=REAL(-12_1,16)

call check(b,REAL(-12_1,16))

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->R16) ???'
      else
        print*,"i1->R16 OK"
      endif
      end subroutine
