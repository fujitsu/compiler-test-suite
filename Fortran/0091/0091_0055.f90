PROGRAM MAIN
REAL*16,DIMENSION(1:3),PARAMETER::a=214748.23_16
REAL*16,DIMENSION(1:3)::b=MODULO(a(1:3),3111.1_16)

do i=1,3
call check(b(i),MODULO(a(1:3),3111.1_16),i)
enddo
contains

      subroutine check(x,y,i)
      REAL*16,intent(in):: x,y(:)
      print *,x, "--",y(i)
      if (any(x.ne.y)) then
        print *,'??? (Error: R16->R16) ???'
       else
        print*, "R16->R16 OK"
      endif
      end subroutine
END
