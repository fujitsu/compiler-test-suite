PROGRAM MAIN
COMPLEX,DIMENSION(3),PARAMETER::a=(3.40282347e+38_4,-3.40282347_4)
REAL,DIMENSION(3)::b=REAL(a(1:3),4)

do i=1,3
call check(b(i),REAL(a(i),4))
enddo
END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: C->R) ???'
      else
        print*,"C->R OK"
      endif
      end subroutine
