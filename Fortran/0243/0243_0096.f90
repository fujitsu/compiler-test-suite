PROGRAM MAIN
REAL*8,PARAMETER::a=33620483.34_8
REAL*8::b=MODULO(a,2)

call check(b,MODULO(a,2))

END

      subroutine check(x,y)
      REAL*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
      else
        print*, "R8->R8 OK"
      endif
      end subroutine
