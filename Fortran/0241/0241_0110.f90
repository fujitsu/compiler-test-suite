PROGRAM MAIN
REAL*8,PARAMETER::a=3.40282347e+38
REAL::b=SNGL(a)

call check(b,SNGL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R) ???'
      else  
        print*,"SNGL R8->R OK"
      endif
      end subroutine
