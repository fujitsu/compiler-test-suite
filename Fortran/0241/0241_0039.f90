PROGRAM MAIN
REAL*16,DIMENSION(1:3),PARAMETER::a=67175171.23_16
INTEGER::b(3)=INT(a(1:3),4)

do i=1,3
call check(b(i),INT(a(i),4))
enddo

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
