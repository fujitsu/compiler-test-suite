PROGRAM MAIN
INTEGER::b=INT(4328719365_8)
call check(b, INT(4328719365_8))
END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--",  y
      if (x.ne.y) then
        print *,'??? (Error: i8->i4) ???'
       else
        print*, "i8->i4 OK"
      endif
      end subroutine
