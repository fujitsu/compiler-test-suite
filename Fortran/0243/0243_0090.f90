PROGRAM MAIN
REAL::b=MODULO(-2164293634.23_4,8)

call check(b,MODULO(-2164293634.23_4,8))

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
