PROGRAM MAIN
REAL*8,PARAMETER::a=1.797693134862316d+307
REAL*8::b=DBLE(a)

call check(b,DBLE(a))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
      else
        print*,"DBLE R8->R8 OK"
      endif
      end subroutine
