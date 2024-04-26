PROGRAM MAIN
INTEGER*8::b=INT(127_1,8)
call check(b, INT(127_1,8))
END

      subroutine check(x,y)
      integer*8 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: i1->i8) ???'
       else
        print*, "i1->i8 OK"
      endif
      end subroutine
