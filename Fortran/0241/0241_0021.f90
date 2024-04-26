PROGRAM MAIN
REAL*8::b=DBLE(1234_8)

call check(b,DBLE(1234_8))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R8) ???'
      else
        print*,"DBLE i8->R8 OK"
      endif
      end subroutine
