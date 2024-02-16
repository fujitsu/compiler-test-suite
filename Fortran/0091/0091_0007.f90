PROGRAM MAIN
REAL*16,PARAMETER::a=67175171.23_16
INTEGER::b=CEILING(a,4)


call check(b,CEILING(a,4))

END

      subroutine check(x,y)
      integer x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->i4 ???)'
       else
        print*, "R16->i4 OK"
      endif
      end subroutine
