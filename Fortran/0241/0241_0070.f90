PROGRAM MAIN
INTEGER*1::b=INT(4328719365_8,1)
call check(b, INT(4328719365_8,1))
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i8->i1) ???'
      else
        print*, "i8->i1 OK"
      endif
      end subroutine
