PROGRAM MAIN
INTEGER*2::b=FLOOR(8421.00_4,2)

call check(b,FLOOR(8421.00_4,2))

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
