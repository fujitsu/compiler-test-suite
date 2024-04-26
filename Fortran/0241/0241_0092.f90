PROGRAM MAIN
REAL::b=REAL(3.40282347e+38_8,4)

call check(b,REAL(3.40282347e+38_8,4))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->R) ???'
      else
        print*,"R8->R OK"
      endif
      end subroutine
