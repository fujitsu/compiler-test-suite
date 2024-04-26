PROGRAM MAIN
INTEGER*1,DIMENSION(1:5),PARAMETER::a = 121

REAL,DIMENSION(1:5)::b=REAL(a(1:5))

do i=1,5
call check(b(i),REAL(a(i)))
enddo

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->R) ???'
      else
        print*, "i1->R OK"
      endif
      end subroutine


