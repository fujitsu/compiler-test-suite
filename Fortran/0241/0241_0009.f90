PROGRAM MAIN
REAL*8::b=DBLE(100_1)

call check(b,DBLE(100_1))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->R8) ???'
      else
        print*,"DBLE i1->R8 OK"
      endif
      end subroutine
