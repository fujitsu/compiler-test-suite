PROGRAM MAIN
COMPLEX*16,PARAMETER::b = CDSQRT((5151.2_8 , 1515.2_8))

call check(b,CDSQRT((5151.2_8,1515.2_8)))

END

      subroutine check(x,y)
      COMPLEX*16 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: C16->C16) ???'
      else
        print*, "C16->C16 OK"
      endif
      end subroutine
