PROGRAM MAIN
COMPLEX*16,DIMENSION(1:3),PARAMETER::a=((2147.23_8, 2147.23_8))
COMPLEX*16,DIMENSION(1:3)::b=CDSQRT(a(1:3))

do i=1,3
call check(b(i),CDSQRT(a(i)))
enddo

END

      subroutine check(x,y)
      COMPLEX*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C16->C16) ???'
       else
        print*, "C16->C16 OK"
      endif
      end subroutine
