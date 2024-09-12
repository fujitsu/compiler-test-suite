PROGRAM MAIN
COMPLEX,PARAMETER::b = SQRT((51.2_4 , 15.2_4))

call check(b,SQRT((51.2_4,15.2_4)))

END

      subroutine check(x,y)
      COMPLEX x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: C8->C8) ???'
      else
        print*, "C8->C8 OK"
      endif
      end subroutine
