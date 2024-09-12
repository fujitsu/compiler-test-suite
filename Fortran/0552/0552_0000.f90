PROGRAM MAIN
REAL,PARAMETER::b=ACOS(X=0.4)

call check(b,ACOS(X=0.4))

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
