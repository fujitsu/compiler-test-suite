PROGRAM MAIN
INTEGER*1,PARAMETER::a=-128
INTEGER*2::b=INT(a,2)
call check(b, INT(a,2))
END

      subroutine check(x,y)
      integer*2 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i1->i2) ???'
      else
        print*, "i1->i2 OK"
      endif
      end subroutine

