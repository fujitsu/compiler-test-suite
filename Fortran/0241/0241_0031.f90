PROGRAM MAIN
REAL*16,DIMENSION(1:5),PARAMETER::a=67175171.23_16

INTEGER,DIMENSION(1:5)::b=IFIX(a(1:5))

do i=1,5
call check(b(i),IFIX(a(i)))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->i4 ???)'
     else
        print*, "IFIX R16->i4 OK"
      endif
      end subroutine
