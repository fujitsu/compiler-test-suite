PROGRAM MAIN
INTEGER*8::b=CEILING(-2164293634.23_4,8)

call check(b,INT(-2164293634.23_4,8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R4->i8) ???'
       else
        print*, "R4->i8 OK"
      endif
      end subroutine
