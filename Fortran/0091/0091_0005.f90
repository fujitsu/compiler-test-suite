PROGRAM MAIN
INTEGER*1::b=CEILING(-67.23_16,1)

call check(b,CEILING(-67.23_16,1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->i1) ???'
       else
        print*, "R16->i1 OK"
      endif
      end subroutine
