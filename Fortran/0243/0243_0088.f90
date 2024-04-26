PROGRAM MAIN
REAL::b=MODULO(8421376.00_4,2)

call check(b,MODULO(8421376.00_4,2))

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
