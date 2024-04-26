PROGRAM MAIN
INTEGER*1::b=INT(1.3_4,1)

call check(b,INT(1.3_4,1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->i1) ???'
      else
        print*, "R->i1 OK"
      endif
      end subroutine
