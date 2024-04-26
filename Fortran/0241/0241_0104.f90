PROGRAM MAIN

TYPE ONE
REAL*16::a
REAL*8::b
REAL*8::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(REAL(2147483647_4,16), REAL(214748_4,8),&
                        REAL(214_4,8))
TYPE(ONE)::Z
Z=ONE(REAL(2147483647_4,16), REAL(214748_4,8),&
                        REAL(214_4,8))
call check16(O%a,Z%a)
call check8(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check16(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R16) ???'
      else
        print*,"i4->R16 OK"
      endif
      end subroutine

      subroutine check8(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print*,"i4->R8 OK"
      endif
      end subroutine

      subroutine check4(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print*,"i4->R8 OK"
      endif
      end subroutine
