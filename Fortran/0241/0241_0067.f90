PROGRAM MAIN
INTEGER*2::b=INT(1179906,2)
call check(b, INT(1179906,2))
END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i4->i2) ???'
       else
        print*, "i4->i2 OK"
      endif
      end subroutine
