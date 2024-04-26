PROGRAM MAIN
INTEGER*1::b=INT(513_2,1)
call check(b, INT(513_2,1))
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i2->i1) ???'
      else
        print*, "i2->i1 OK"
      endif
      end subroutine
