PROGRAM MAIN
REAL*8,DIMENSION(1:3),PARAMETER::a=2147483647.23_8
INTEGER,DIMENSION(1:3)::b=INT(a(1:3),4)

do i=1,3
call check(b(i),INT(a(i),4))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i4) ???'
       else
        print*, "R8->i4 OK"
      endif
      end subroutine