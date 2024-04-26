PROGRAM MAIN
INTEGER*1,PARAMETER::a=127
INTEGER::b=INT(a)
call check(b, INT(a))
END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i1->i4) ???'
       else
        print*, "i1->i4 OK"
      endif
      end subroutine
