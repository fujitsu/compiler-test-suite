PROGRAM MAIN

TYPE ONE
REAL*8::a
REAL*8::b
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(DBLE(2147483647_4), DBLE(214748_8))

TYPE(ONE)::Z
Z=ONE(DBLE(2147483647_4), REAL(214748_8))

call check1(O%a,Z%a)
call check2(O%b,Z%b)
END

      subroutine check1(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print*,"i4->R8 OK"
      endif
      end subroutine

      subroutine check2(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i8->R8) ???'
      else
        print*,"i8->R8 OK"
      endif
      end subroutine

      subroutine check3(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->R8) ???'
      else
        print*,"R->R8 OK"
      endif
      end subroutine
