PROGRAM MAIN
REAL*8,DIMENSION(1:3),PARAMETER::a=2147.23_8
REAL*8,DIMENSION(1:3)::b=SQRT(a(1:3))

do i=1,3
call check(b(i),SQRT(a(i)))
enddo

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
       else
        print*, "R8->R8 OK"
      endif
      end subroutine
