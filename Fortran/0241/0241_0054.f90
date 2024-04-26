PROGRAM MAIN
INTEGER*8::b=INT((-2164293634.23_8,44224.34_8),8)

call check(b,INT((-2164293634.23_8,44224.34_8),8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: c16->i8) ???'
       else
        print*, "c16->i8 OK"
      endif
      end subroutine
