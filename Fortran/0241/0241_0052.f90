PROGRAM MAIN
INTEGER*1::b=INT((1.0_8,1.0_8),1)


call check(b,INT((1.0_8,1.0_8),1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: c16->i1) ???'
      else
        print*, "c16->i1 OK"
      endif
      end subroutine
