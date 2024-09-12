PROGRAM MAIN
REAL*8,DIMENSION(1:3),PARAMETER::a=21.23_8
INTEGER*1,DIMENSION(1:3)::b=FLOOR(a(1:3),1)

do i=1,3
call check(b(i),FLOOR(a(i),1))
enddo

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i1) ???'
       else
        print*, "R8->i1 OK"
      endif
      end subroutine
