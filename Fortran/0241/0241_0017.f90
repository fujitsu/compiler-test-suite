PROGRAM MAIN
REAL*8,PARAMETER::b=DBLE(234)

call check(b,DBLE(234))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print *,"DFLOTI i4->R8 OK"
      endif
      end subroutine
