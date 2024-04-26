PROGRAM MAIN

INTEGER,DIMENSION(1:5),PARAMETER::a=(5-4+3393446)

REAL*16,DIMENSION(1:5)::b=REAL(a(1:5), 16)

do i = 1,5
call check(b(i),REAL(a(i), 16))
enddo

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R16) ???'
      else
        print*,"i4-R16 OK"
      endif
      end subroutine

