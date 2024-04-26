PROGRAM MAIN
INTEGER*1::b=INT(1179906,1)
call check(b, INT(1179906,1))
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i4->i1) ???'
      else
        print*, "i4->i1 OK"   
      endif
      end subroutine
