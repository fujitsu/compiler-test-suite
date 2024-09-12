PROGRAM MAIN
INTEGER*2::b=CEILING(842.00_4,2)

call check(b,CEILING(842.00_4,2))

END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->i2) ???'
      else
        print*, "R->i2 OK"
      endif
      end subroutine
