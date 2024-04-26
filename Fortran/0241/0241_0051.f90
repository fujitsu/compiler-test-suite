PROGRAM MAIN
INTEGER*8::b=INT((-2164293634.23_4,44224.34_4),8)

call check(b,INT((-2164293634.23_4,44224.34_4),8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: c->i8) ???'
      else
        print*, "c->i8 OK"
      endif
      end subroutine
