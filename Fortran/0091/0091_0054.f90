PROGRAM MAIN
REAL::b=MODULO(-2164293634.23_4,8888888.88_4)

call check(b,MODULO(-2164293634.23_4,8888888.88_4))

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
