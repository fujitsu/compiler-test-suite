PROGRAM MAIN
REAL,PARAMETER::b=SQRT(X=4.0_4)

call check(b,SQRT(X=4.0_4))

END

      subroutine check(x,y)
      Real x,y
      if (abs(x-y)>0.000001) then
      print *,x ,"--", y
        print *,'??? (Error: R->R) ???'
      else
        print*, "R->R OK"
      endif
      end subroutine
