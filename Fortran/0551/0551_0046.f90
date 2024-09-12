PROGRAM MAIN
REAL,DIMENSION(1:3),PARAMETER::a=2147.23_4
INTEGER,DIMENSION(1:3)::b=NINT(a(1:3))

do i=1,3
call check(b(i),NINT(a(i)))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->i4) ???'
       else
        print*, "R->i4 OK"
      endif
      end subroutine
