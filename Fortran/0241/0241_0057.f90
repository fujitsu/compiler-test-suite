PROGRAM MAIN
INTEGER*8::b=INT((-2164293634.23_16,44224.34_16),8)

call check(b,INT((-2164293634.23_16,44224.34_16),8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: c32->i8) ???'
      else
        print*, "c32->i8 OK" 
      endif
      end subroutine
