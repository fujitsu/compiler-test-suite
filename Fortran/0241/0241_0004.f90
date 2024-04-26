PROGRAM MAIN
REAL,DIMENSION(1:3),PARAMETER::a=-45.23
REAL*8,DIMENSION(1:3)::b=DBLE(a(1:3))

do i=1,3
call check(b(i),DBLE(a(i)))
enddo

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R4->R8) ???'
      else
        print*,"DBLE R4->R8 OK"
      endif
      end subroutine
