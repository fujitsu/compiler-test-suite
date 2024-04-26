PROGRAM MAIN
REAL*8::b=DBLE(32767_2)

call check(b,DBLE(32767_2))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R8) ???'
      else
        print*,"DBLE i2->R8 OK"
      endif
      end subroutine
