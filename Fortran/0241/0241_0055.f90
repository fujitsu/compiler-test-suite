PROGRAM MAIN
INTEGER*1::b=INT((1.0_16,1.0_16),1)


call check(b,INT((1.0_16,1.0_16),1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: c32->i1) ???'
       else
        print*, "c32->i1 OK"
      endif
      end subroutine
