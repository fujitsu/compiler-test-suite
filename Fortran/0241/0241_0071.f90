PROGRAM MAIN
INTEGER*2::b=INT(4328719365_8,2)
call check(b, INT(4328719365_8,2))
END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i8->i2) ???'
       else
        print*, "i8->i2 OK"
      endif
      end subroutine
