PROGRAM MAIN
INTEGER*1::b=INT((1.0_4,1.0_4),1)


call check(b,INT((1.0_4,1.0_4),1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: c->i1) ???'
       else
        print*, "C->i1 OK"
      endif
      end subroutine
