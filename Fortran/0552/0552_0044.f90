PROGRAM MAIN
REAL,PARAMETER::b=SINH(X=44.0)

call check(b,SINH(X=44.0))

END

      subroutine check(x,y)
      Real x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->R) ???'
      else
        print*, "R->R OK"
      endif
      end subroutine
