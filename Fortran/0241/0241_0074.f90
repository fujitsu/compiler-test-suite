PROGRAM MAIN
REAL*8,PARAMETER::a(5)=2147483647.23_8
INTEGER,PARAMETER::b(5)=INT(a)

do i=1,5
call check(b(i),INT(a(i)))
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
