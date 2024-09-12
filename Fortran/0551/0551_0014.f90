PROGRAM MAIN
integer*1,PARAMETER::b=CEILING(21.3_8*5,1)

INTEGER*1::a
a=CEILING(21.3_8*5,1)

call check(b,a)
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i1) ???'
       else
        print*, "R8->i1 OK"
      endif
      end subroutine
