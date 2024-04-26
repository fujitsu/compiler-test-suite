PROGRAM MAIN
REAL,PARAMETER::a=3.40282347
REAL::b=SNGL(a)

call check(b,SNGL(a))

END

      subroutine check(x,y)
      real x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R4->R4) ???'
      else  
        print*,"SNGL R4->R4 OK"
      endif
      end subroutine
