PROGRAM MAIN
INTEGER*2,PARAMETER::a=-32768
INTEGER::b=INT(a)
call check(b, INT(a))
END

      subroutine check(x,y)
      integer x,y
      print *, x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i2->i4) ???'
      else
        print*, "i2->i4 OK"
      endif
      end subroutine
