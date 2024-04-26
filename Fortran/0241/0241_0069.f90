PROGRAM MAIN
INTEGER*8::b=INT(2147483647_4,8)
call check(b, INT(2147483647_4,8))
END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i4->i8) ???'
       else
        print*, "i4->i8 OK"
      endif
      end subroutine
