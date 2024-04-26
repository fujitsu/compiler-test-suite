PROGRAM MAIN
INTEGER::b=INT(32767123_4)
call check(b, INT(32767123_4))
END

      subroutine check(x,y)
      integer x,y
      print *, x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i4->i4) ???'
      else
        print*, "i4->i4 OK"
      endif
      end subroutine
