PROGRAM MAIN
INTEGER*8::b=FLOOR(-2164293634.23_4,8)

call check(b,FLOOR(-2164293634.23_4,8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->i8) ???'
       else
        print*, "R->i8 OK"
      endif
      end subroutine
