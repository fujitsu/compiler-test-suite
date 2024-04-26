PROGRAM MAIN
REAL*16,DIMENSION(1:5),PARAMETER::a=(/(real(257_2,16),i=1,5)/)

REAL*16,DIMENSION(1:5)::b
b=(/(real(257_2,16),i=1,5)/)

do i=1,5
call check(a(i),b(i))
enddo

END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i2->R16) ???'
      else
        print*, "i2-R16 OK"
      endif
      end subroutine
