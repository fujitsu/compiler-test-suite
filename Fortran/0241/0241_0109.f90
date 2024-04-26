PROGRAM MAIN
REAL*16,PARAMETER::a=3.4
REAL::b=SNGL(a)

call check(b,SNGL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R) ???'
      else  
        print*,"SNGL R16->R OK"
      endif
      end subroutine
