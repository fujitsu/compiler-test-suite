PROGRAM MAIN
REAL*8,PARAMETER::b=DBLE(23433_2)

call check(b,DBLE(23433_2))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R8) ???'
      else
        print *,"DFLOTI i2->R8 OK"
      endif
      end subroutine
