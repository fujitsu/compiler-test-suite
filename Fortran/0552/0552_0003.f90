PROGRAM MAIN
REAL*8,DIMENSION(1:3),PARAMETER::a=0.23_8
REAL*8,DIMENSION(1:3)::b=ACOS(a(1:3))

do i=1,3
call check(b(i),ACOS(a(i)))
enddo

END

      subroutine check(x,y)
      REAL*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R8) ???'
       else
        print*, "R8->R8 OK"
      endif
      end subroutine
