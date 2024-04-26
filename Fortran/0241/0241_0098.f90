PROGRAM MAIN
REAL*8::b=REAL(110_1,8)

call check(b,REAL(110_1,8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->R8) ???'
      else
        print*,"i1->R8 OK"
      endif
      end subroutine

