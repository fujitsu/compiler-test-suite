PROGRAM MAIN
REAL*8,PARAMETER::b=MODULO(261.3_8*5,1)

REAL*8::a
a=MODULO(261.3_8*5,1)

call check(b,a)
END

      subroutine check(x,y)
      REAL*8 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
       else
        print*, "R8->R8 OK"
      endif
      end subroutine
