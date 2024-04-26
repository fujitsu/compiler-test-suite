PROGRAM MAIN
REAL*8,PARAMETER::a(3)=2147483647.23_8
INTEGER,DIMENSION(1:3)::b=IFIX(a(1:3))

do i=1,3
call check(b(i),IFIX(a(i)))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i4) ???'
  	else
        print*, "IFIX R8->i4 OK"
      endif
      end subroutine
