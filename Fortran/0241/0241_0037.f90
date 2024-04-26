PROGRAM MAIN
INTEGER*1::b=INT(3.0_16,1)

call check(b,INT(3.0_16,1))

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
