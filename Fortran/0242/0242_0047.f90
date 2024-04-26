PROGRAM MAIN

TYPE ONE
COMPLEX*16::b
COMPLEX*16::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(dcmplx((1.1_8,2.2_8)),dcmplx((3.2_8,4.2_8)))


TYPE(ONE)::Z
Z=ONE(dcmplx((1.1_8,2.2_8)),dcmplx((3.2_8,4.2_8)))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      COMPLEX*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->C16) ???'
      else
        print*,"C->C16 OK"
      endif
      end subroutine
