PROGRAM MAIN
REAL,DIMENSION(1:3),PARAMETER::a=2147.23_4
INTEGER*2,DIMENSION(1:3)::b=INT2(a(1:3))

do i=1,3
call check(b(i),INT2(a(i)))
enddo

END

      subroutine check(x,y)
      integer*2 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->i2) ???'
       else
        print*, "R->i2 OK"
      endif
      end subroutine
