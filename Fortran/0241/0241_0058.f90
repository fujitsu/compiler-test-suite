PROGRAM MAIN
INTEGER*1::b=INT(127_1,1)
call check(b, INT(127_1,1))
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i1->i1) ???'
      else
        print*, "i1->i1 OK"
      endif
      end subroutine
