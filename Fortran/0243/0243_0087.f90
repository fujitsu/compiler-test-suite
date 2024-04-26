PROGRAM MAIN
REAL::b=MODULO(A=513.2_4,P=1)

call check(b,MODULO(A=513.2_4,P=1))

END

      subroutine check(x,y)
      REAL x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->R) ???'
      else
        print*, "R->R OK"
      endif
      end subroutine
