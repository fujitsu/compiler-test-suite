PROGRAM MAIN
INTEGER*2,PARAMETER::b=CEILING(6717.23_16,2)

call check(b,CEILING(6717.23_16,2))

END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R16->i2) ???'
       else
        print*, "R16->i2 OK"
      endif
      end subroutine
