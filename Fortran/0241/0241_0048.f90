PROGRAM MAIN
INTEGER*8::b=INT(o'777777777777777777777',8)

call check(b, INT(o'777777777777777777777',8))
END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: boz->i8) ???'
       else
        print*, "boz->i8 OK"
      endif
      end subroutine
